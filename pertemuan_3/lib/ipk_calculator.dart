import 'dart:io';

class IPKCalculator {
  List<List<int>> sks = List.generate(50, (index) => List.filled(30, 0)); // SKS per matkul per semester
  List<int> skssmt = List.filled(14, 0); // Total SKS per semester
  List<List<String>> nilaihuruf = List.generate(50, (index) => List.filled(30, '')); // Nilai huruf per matkul
  List<List<String>> matkul = List.generate(50, (index) => List.filled(30, '')); // Nama mata kuliah
  List<int> jmlmk = List.filled(14, 0); // Jumlah matkul per semester
  List<double> nr = List.filled(14, 0.0); // Nilai rata-rata per semester
  double totalnr = 0.0; // Total Nilai Rata-rata (NR)

  void hitungIPK(int jmlsmt) {
    int totalsks = 0; // Total keseluruhan SKS

    for (int i = 0; i < jmlsmt; i++) {
      int jumlahnilai = 0; // Jumlah nilai untuk semester i
      int jumlahsks = 0; // Jumlah SKS untuk semester i

      stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
      jmlmk[i] = int.parse(stdin.readLineSync()!); // Jumlah matkul di semester i

      for (int j = 0; j < jmlmk[i]; j++) {
        print("Masukkan mata kuliah ke ${j + 1}");
        stdout.write("Masukkan nama matkul: ");
        matkul[i][j] = stdin.readLineSync()!;
        
        stdout.write("Masukkan jumlah SKS matkul: ");
        sks[i][j] = int.parse(stdin.readLineSync()!); // Input jumlah SKS matkul

        stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
        nilaihuruf[i][j] = stdin.readLineSync()!; // Input nilai huruf
        print("----------------------------------------------");
        // Mengonversi nilai huruf menjadi nilai numerik
        int nilai = 0;
        if (nilaihuruf[i][j] == 'A') nilai = 4 * sks[i][j];
        else if (nilaihuruf[i][j] == 'B') nilai = 3 * sks[i][j];
        else if (nilaihuruf[i][j] == 'C') nilai = 2 * sks[i][j];
        else if (nilaihuruf[i][j] == 'D') nilai = 1 * sks[i][j];
        else if (nilaihuruf[i][j] == 'E') nilai = 0 * sks[i][j];

        jumlahnilai += nilai; // Menambahkan nilai mata kuliah ke total nilai semester
        jumlahsks += sks[i][j]; // Menambahkan SKS ke total SKS semester
      }

      skssmt[i] = jumlahsks; // Menyimpan total SKS semester i
      nr[i] = jumlahnilai / jumlahsks; // Menghitung nilai rata-rata semester i
      totalsks += jumlahsks; // Menambah SKS semester i ke total SKS keseluruhan
      totalnr += nr[i] * jumlahsks; // Menambah NR semester i yang sudah dikalikan SKS ke total NR
    }

    // Menghitung IPK berdasarkan total NR dan total SKS
    double ipk = totalnr / totalsks;
    
    // Menampilkan hasil akhir
    print("==============================================");
    print("\t\tTranskrip Nilai");
    print("==============================================");

    for (int i = 0; i < jmlsmt; i++) {
      print("\nHasil Semester ${i + 1}:");
      print("\nMata Kuliah\tSKS\tNilai");

      for (int j = 0; j < jmlmk[i]; j++) {
        print("${matkul[i][j]}\t\t${sks[i][j]}\t${nilaihuruf[i][j]}");
      }

      print("\nSKS\t: ${skssmt[i]}");
      print("NR\t: ${nr[i].toStringAsFixed(2)}");
      print("----------------------------------------------");
    }

    print("Total SKS\t: $totalsks");
    print("IPK\t\t: ${ipk.toStringAsFixed(2)}");
    print("==============================================");
  }
}

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
