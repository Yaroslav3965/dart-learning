void main() {
  Map<int, int> urinals = {
    1: 0,
    2: 1,
    3: 2,
    4: 0,
    5: 1,
  };

  if (urinals.isEmpty) {
    print('Error: Urinal status map is empty!');
  return;
  }

  Map<int, String> statusNames = {
    0: "free",
    1: "busy",
    2: "broken",
  };

  List<int> urinalId = urinals.keys.toList();

  for (int i = 0; i < urinalId.length; i++){
    int id = urinalId[i];
    int statusCode = urinals[id]!;

    String statusText = statusNames[statusCode] ?? 'unknown';
    print("Urinal $id is $statusText");
  }
}