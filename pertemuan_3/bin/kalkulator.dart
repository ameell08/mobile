import 'dart:io';
import '../lib/ipk_calculator.dart'; // Ubah jalur impor sesuai struktur proyek

void main() {
  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  stdout.write("Masukkan jumlah semester: ");
  int jmlsmt = int.parse(stdin.readLineSync()!);

  if (jmlsmt < 2 || jmlsmt > 14) {
    print("Jumlah semester salah!");
    return;
  }

  IPKCalculator calculator = IPKCalculator();
  calculator.hitungIPK(jmlsmt);
}
