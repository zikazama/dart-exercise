import 'dart:io';

void main() {
  // Tanyakan ukuran papan kepada pengguna
  stdout.write("Masukkan ukuran papan permainan (contoh: 3 untuk 3x3): ");
  int? size = int.tryParse(stdin.readLineSync() ?? '');

  if (size == null || size <= 0) {
    print("Ukuran papan tidak valid. Harap masukkan angka positif.");
    return;
  }

  // Gambar papan permainan
  drawGameBoard(size);
}

void drawGameBoard(int size) {
  // Loop untuk setiap baris papan
  for (int i = 0; i < size; i++) {
    // Gambar baris kotak
    print('|' + '   |' * size);
    // Gambar garis horizontal kecuali di baris terakhir
    if (i < size - 1) {
      print('+' + '---+' * size);
    }
  }
  // Gambar baris bawah
  print('+' + '---+' * size);
}
