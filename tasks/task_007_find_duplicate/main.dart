void main(){
  List<int> urinalNumbers = [1, 3, 2, 5, 3, 7, 1, 4];

  Set<int> seen = {};
  Set<int> duplicates = {};

  for (int number in urinalNumbers) {
    if (seen.contains(number)) {
      duplicates.add(number);
    } else {
      seen.add(number);
    }
  }

  List<int> sortedDuplicates = duplicates.toList()..sort();
  print ('Duplicates: ${sortedDuplicates.join(' ')}');


}