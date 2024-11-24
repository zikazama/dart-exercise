void main() {
  // Daftar asli
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  // Membuat daftar baru dengan elemen genap menggunakan filter
  List<int> evenNumbers = a.where((number) => number % 2 == 0).toList();

  print("Daftar asli: $a");
  print("Daftar elemen genap: $evenNumbers");
}
