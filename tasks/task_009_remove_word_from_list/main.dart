void main(){
  List<String> messages = ["Urinal 1 is broken", "Urinal 2 is free",
    "Urinal 3 is broken", "Urinal 4 is busy"];

  if (messages.isEmpty){
    print("Error: the list is empty");
    return;
  }

  for (String message in messages){
    String update = message.replaceAll("broken", " ");
    update = update.replaceAll(RegExp(r'\s+'), ' ');
    update = update.trim();
    print(update);
  }
}