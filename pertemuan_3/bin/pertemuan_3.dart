import 'package:pertemuan_3/pertemuan_3.dart' as pertemuan_3;

void main() {
  // PRAKTIKUM 1

  // langkah 1
  // String test = "test2";
  // if (test == "test1") {
  //   print("Test1");
  // } else if (test == "test2") {
  //   print("Test2");
  // } else {
  //   print("Something else");
  // }

  // if (test == "test2") {
  //   print("Test2 again");
  // }

  // langkah 3
  //  String test = "true";
  // if (test == "true") {
  //    print("Kebenaran");
  // }

  // PRAKTIKUM 2
  //Langkah 1
  //   int counter = 60;
  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }
  //langkah 3 
  // do {
  //   print(counter);
  //   counter++;
  // } while (counter < 77);

  // PRAKTIKUM 3
  //langkah 1
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
