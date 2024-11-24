import 'dart:io';
import 'dart:math';

void main() {
  // Membuat angka acak antara 1 - 100
  final random = Random();
  int randomNumber = random.nextInt(100) + 1;

  print("Selamat datang di permainan tebak angka!");
  print("Saya telah memilih angka antara 1 sampai 100.");
  print("Coba tebak angkanya!");

  while (true) {
    stdout.write("Masukkan tebakan Anda: ");
    String? input = stdin.readLineSync();

    // Validasi input pengguna
    if (input == null || int.tryParse(input) == null) {
      print("Masukkan angka yang valid.");
      continue;
    }

    int guess = int.parse(input);

    // Membandingkan tebakan dengan angka acak
    if (guess < randomNumber) {
      print("Terlalu rendah (Too low). Coba lagi!");
    } else if (guess > randomNumber) {
      print("Terlalu tinggi (Too high). Coba lagi!");
    } else {
      print(
          "Selamat! Anda benar (Exactly right). Angkanya adalah $randomNumber.");
      break;
    }
  }
}
