import 'dart:io';

// Fungsi untuk membalik urutan kata dalam sebuah string
String reverseWords(String input) {
  // Memecah string menjadi daftar kata
  List<String> words = input.split(' ');
  // Membalik urutan kata
  List<String> reversedWords = words.reversed.toList();
  // Menggabungkan kembali menjadi string
  return reversedWords.join(' ');
}

void main() {
  stdout.write("Masukkan sebuah kalimat: ");
  String? userInput = stdin.readLineSync();

  if (userInput == null || userInput.trim().isEmpty) {
    print("Input tidak valid. Harap masukkan kalimat.");
    return;
  }

  // Memanggil fungsi reverseWords
  String result = reverseWords(userInput);
  print("Kalimat dengan kata-kata terbalik: $result");
}
