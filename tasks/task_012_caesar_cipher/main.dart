  void main() {
    String text = "hello";
    int shift = 3;

    if (text.isEmpty) {
      print("Error: text is empty");
      return;
    }

    StringBuffer encryptedText = StringBuffer();

    for (int codeUnit in text.codeUnits) {
      int letterIndex = codeUnit - 97;
      int newIndex = (letterIndex + shift) % 26;
      int newCodeUnit = newIndex + 97;
      encryptedText.write(String.fromCharCode(newCodeUnit));
    }

    String cipherText = encryptedText.toString();
    print('Encrypted: $cipherText');

    // reverse

    StringBuffer decryptedText = StringBuffer();

    for (int codeUnit in cipherText.codeUnits) {
      int letterIndex = codeUnit - 97;
      int originalIndex = (letterIndex - shift + 26) % 26;
      int originalCodeUnit = originalIndex + 97;
      decryptedText.write(String.fromCharCode(originalCodeUnit));
    }

    print('Decrypted: ${decryptedText.toString()}');
  }
