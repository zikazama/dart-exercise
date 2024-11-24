List<T> removeDuplicates<T>(List<T> inputList) {
  // Konversi list ke Set untuk menghilangkan duplikat, lalu kembali ke list
  return inputList.toSet().toList();
}

void main() {
  // Daftar input
  List<int> inputList = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10];

  // Memanggil fungsi removeDuplicates
  List<int> uniqueList = removeDuplicates(inputList);

  print("Daftar asli: $inputList");
  print("Daftar tanpa duplikat: $uniqueList");
}
