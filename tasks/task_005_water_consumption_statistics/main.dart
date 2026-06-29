void main(){
  List<int> waterList = [8, 15, 35, 22, 40];

  if (waterList.isEmpty) {
    print('Error: Water consumption list is empty!');
    return;
  }

  int total = waterList.reduce((a, b) => a + b);
  int min = waterList.reduce((a, b) => a < b ? a : b);
  int max = waterList.reduce((a, b) => a > b ? a : b);
  double average = total / waterList.length;

  print("Total: $total");
  print("Min: $min");
  print("Max: $max");
  print("Average: ${average.toStringAsFixed(1)}");
}