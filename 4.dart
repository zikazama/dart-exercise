void main() {
  // Daftar input
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  // Mengambil elemen yang umum tanpa duplikat
  List<int> commonElements = a.toSet().intersection(b.toSet()).toList();

  print("Daftar a: $a");
  print("Daftar b: $b");
  print("Elemen yang umum tanpa duplikat: $commonElements");
}
