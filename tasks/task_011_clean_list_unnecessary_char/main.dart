void main(){
  List<String> nameUrinals = ['Urinal 1!',
  'Urinal 2???',
  '!!Urinal 3',
  'Urinal #4',
  '?Urinal 5!'];

  if (nameUrinals.isEmpty){
    print("Error: the list is empty");
    return;
  }

  for (String name in nameUrinals){
    String update =  name.replaceAll(RegExp(r'[#!?]'), ' ');
    update = update.replaceAll(RegExp(r'\s+'), ' ');
    update = update.trim();
    print(update);
  }
}