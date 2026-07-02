void main(){
  String text = 'ABC';
  int shift = 1;

  if (text.isEmpty) {
    print("Error: text is empty");
    return;
  }

  StringBuffer encryptedText = StringBuffer();

  for (int codeUnit in text.codeUnits){
    int letterIndex = codeUnit + shift;
    encryptedText.write(String.fromCharCode(letterIndex));
  }
  print(encryptedText.toString());
}