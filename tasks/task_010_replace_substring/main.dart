void main(){
  List<String> messages = ['Urinal 1 is free',
    'Urinal 2 is busy',
    'Urinal 3 is broken',
    'Urinal 4 is busy',
    'Urinal 5 is free'];

  if (messages.isEmpty){
    print("Error: the list is empty");
    return;
  }
  
  for (String message in messages){
    String update = message.replaceAll("busy", "ocсupied");
    print(update);
  }
}