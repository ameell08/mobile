import '../lib/prima_cek.dart';

void main() {
  String nama = "amelia wahyu safitri";
  String nim = "2241760008";

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print(" ");
      print("$i merupakan bilangan prima");
      print("nama : $nama");
      print("nim : $nim ");
    }
  }
}
