void main () {
  double liters = 8.0;
  double distance = 100;
  String result = calculateConsumption(liters, distance);
  print(result);
}

String calculateConsumption(double liters, double distance){
  if (liters <= 0 || distance <=0) {
    return "Error";
  }
  double consumption = (liters / distance) * 100;
  String result = '';
  if (consumption < 6) {
    result = 'Low consumption';
  } else if (consumption <= 10) {
    result = 'Normal consumption';
  } else {
    result = 'High consumption';
  }
  return 'Consumption: ${consumption.toStringAsFixed(1)}\n$result';
}
// Ready for review