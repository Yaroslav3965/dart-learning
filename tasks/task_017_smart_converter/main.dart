 void main() {
    String input = "1 km in meters";

    if (input.isEmpty) {
      print("Error");
      return;
    }

    List<String> parts = input.trim().split(RegExp(r'\s+'));
    String connector = parts[2].toLowerCase();
    if (connector != 'to' && connector != 'in') {
      print("Error");
      return;
    }

    double? value = double.tryParse(parts[0]);
    if (value == null) {
      print("Error");
      return;
    }

    final Map<String, Map<String, dynamic>> unitRegistry = {
      'm': {'type': 'length', 'ratio': 1.0, 'short': 'm'},
      'meter': {'type': 'length', 'ratio': 1.0, 'short': 'm'},
      'meters': {'type': 'length', 'ratio': 1.0, 'short': 'm'},
      'km': {'type': 'length', 'ratio': 1000.0, 'short': 'm'},
      'kilometer': {'type': 'length', 'ratio': 1000.0, 'short': 'm'},
      'kilometers': {'type': 'length', 'ratio': 1000.0, 'short': 'm'},

      'l': {'type': 'volume', 'ratio': 1.0, 'short': 'l'},
      'liter': {'type': 'volume', 'ratio': 1.0, 'short': 'l'},
      'liters': {'type': 'volume', 'ratio': 1.0, 'short': 'l'},
      'ml': {'type': 'volume', 'ratio': 0.001, 'short': 'l'},
      'milliliter': {'type': 'volume', 'ratio': 0.001, 'short': 'l'},
      'milliliters': {'type': 'volume', 'ratio': 0.001, 'short': 'l'},
      'gal': {'type': 'volume', 'ratio': 3.785, 'short': 'l'},
      'gallon': {'type': 'volume', 'ratio': 3.785, 'short': 'l'},
      'gallons': {'type': 'volume', 'ratio': 3.785, 'short': 'l'},
    };

    String rawFromUnit = parts[1].toLowerCase();
    String rawToUnit = parts[3].toLowerCase();
    var fromData = unitRegistry[rawFromUnit];
    var toData = unitRegistry[rawToUnit];

    if (fromData == null || toData == null) {
      print("Error");
      return;
    }

    if (fromData['type'] != toData['type']) {
      print("Error");
      return;
    }

    double valueInBase = value * fromData['ratio'];
    double result = valueInBase / toData['ratio'];
    String formattedResult = result % 1 == 0 ? result.toInt().toString() : result.toStringAsFixed(3);
    String finalUnitLabel = toData['short'];
    print('$formattedResult $finalUnitLabel');
  }
