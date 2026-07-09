void main() {
  String text = "Hello World";
  String reversed = "";

  for (int i = text.length - 1; i >= 0; i--) {
    reversed += text[i];
  }
  print(reversed);
}