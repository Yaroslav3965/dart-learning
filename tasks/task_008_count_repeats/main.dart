void main(){
  List<int> urinalNumbers = [1, 3, 2, 5, 3, 7, 1, 4, 3, 1];
  Map<int, int> usageCount = {};

  if(urinalNumbers.isEmpty){
    print("Error: the list is empty!");
    return;
  }

  for (int number in urinalNumbers){
    usageCount[number] = (usageCount[number] ?? 0) + 1;
  }

  List<int> sortedKeys = usageCount.keys.toList()..sort();

  for (int key in sortedKeys) {
    int count = usageCount[key]!;
    if (count > 1) {
      print('Urinal $key used $count times');
    }
  }
}