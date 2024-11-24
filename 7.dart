import 'dart:io';

void hangman() {
  // Kata yang harus ditebak
  String wordToGuess = "EVAPORATE";

  // Membuat list untuk melacak huruf yang telah ditebak
  List<String> guessedLetters = [];

  // Membuat list untuk menampilkan kata dengan huruf yang sudah ditebak
  List<String> wordDisplay = List.generate(wordToGuess.length, (_) => '_');

  // Pemain menebak hingga seluruh kata tertebak
  while (wordDisplay.contains('_')) {
    // Menampilkan kata yang telah tertebak sejauh ini
    print("Kata yang telah tertebak: ${wordDisplay.join(' ')}");

    // Meminta pemain menebak huruf
    stdout.write("Tebak huruf: ");
    String guess = stdin.readLineSync()?.toUpperCase() ?? '';

    // Validasi input pemain
    if (guess.length != 1 || !RegExp(r'^[A-Z]$').hasMatch(guess)) {
      print("Input tidak valid. Masukkan hanya satu huruf.");
      continue;
    }

    // Mengecek apakah huruf sudah ditebak
    if (guessedLetters.contains(guess)) {
      print(
          "Anda sudah menebak huruf '$guess' sebelumnya. Coba huruf yang lain!");
      continue;
    }

    // Menambahkan huruf yang ditebak ke dalam daftar guessedLetters
    guessedLetters.add(guess);

    // Mengecek apakah huruf tersebut ada dalam kata
    if (wordToGuess.contains(guess)) {
      print("Benar! Huruf '$guess' ada dalam kata.");
      // Memperbarui wordDisplay dengan huruf yang ditebak
      for (int i = 0; i < wordToGuess.length; i++) {
        if (wordToGuess[i] == guess) {
          wordDisplay[i] = guess;
        }
      }
    } else {
      print("Salah! Huruf '$guess' tidak ada dalam kata.");
    }
  }

  // Jika seluruh kata tertebak
  print("Selamat! Anda berhasil menebak kata: $wordToGuess");
}

void main() {
  hangman();
}
