void main (){
  List<int> water = [35, 8, 40, 15, 22];
  List<int> result = sortWater(water);
  print(result.join(' '));
}

List<int> sortWater(List<int> list) {
  List<int> sortedList = List.from(list);

  for (int i = 0; i < sortedList.length - 1; i++) {
    for (int j = 0; j < sortedList.length - i - 1; j++) {
      if (sortedList[j] > sortedList[j + 1]) {
        int temp = sortedList[j];
        sortedList[j] = sortedList[j + 1];
        sortedList[j + 1] = temp;
      }
    }
  }

  return sortedList;
}