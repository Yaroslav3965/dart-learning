void main(){
  String input = "1 gal to l";

  if (input.isEmpty) {
    print("Error: text is empty");
    return;
  }


  List<String> parts = input.split(' ');

  double? value = double.tryParse(parts[0]);

  if (value == null) {
    print("Error: '${parts[0]}' is not a valid number");
    return;
  }

  String fromUnit = parts[1].toLowerCase();
  String toUnit = parts[3].toLowerCase();

  double liters;

  switch (fromUnit) {
    case 'l':
      liters = value;
      break;
    case 'ml':
      liters = value / 1000;
      break;
    case 'gal':
      liters = value * 3.785;
      break;
    default:
      print('Помилка: Невідома одиниця виміру "$fromUnit"');
      return;
  }
  double result;

  switch (toUnit) {
    case 'l':
      result = liters;
      break;
    case 'ml':
      result = liters * 1000; // переводимо літри в мілілітри
      break;
    case 'gal':
      result = liters / 3.785; // переводимо літри в галони
      break;
    default:
      print('Помилка: Невідома одиниця виміру "$toUnit"');
      return;
  }
  String formattedResult = result % 1 == 0 ? result.toInt().toString() : result.toStringAsFixed(3);
  print('$formattedResult $toUnit');
}
