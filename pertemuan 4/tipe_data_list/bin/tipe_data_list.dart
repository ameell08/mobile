import 'package:tipe_data_list/tipe_data_list.dart' as tipe_data_list;

void main(List<String> arguments) {
  /** PRAKTIKUM 1 --TIPE DATA LIST*/
  /** LANGKAH 1 */
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  /** LANGKAH 3 */
  // final List<dynamic> list = List.filled(5, null); // Membuat list final dengan panjang 5 dan nilai default null

  // assert(list.length == 5);
  // assert(list[0] == null); // Memastikan indeks 0 adalah null

  // // Mengisi nilai pada indeks 1 dan 2
  // list[1] = "amelia";
  // list[2] = 2241760008;

  // assert(list[1] == "amelia");
  // assert(list[2] == 2241760008);

  // print(list.length); // Output panjang list (5)
  // print(list[1]);     // Output "amelia"
  // print(list[2]);     // Output 2241760008

  /** PRAKTIKUM 2 -- EKSPERIMEN TIPE DATA SET*/
  /**Langkah 1 */
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  /**Langkah 3 */
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.

  // //menggunakan .add()
  // names1.add("amelia");
  // names1.add("2241760008");

  // //menggunakan .addAll()
  // names2.addAll({"Amelia", "2241760008"});

  // print(names1);
  // print(names2);

  /** PRAKTIKUM 3 --TIPE DATA MAPS */
  /** Lngkah 1 */
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1,
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // var nama = {"nama": "amelia"};
  // var nim = {"nim": 2241760008};

  // print(gifts);
  // print(nobleGases);
  // print(nama);
  // print(nim);

  /** Langkah 3 */
  // var mhs1 = Map<String, String>();
  // mhs1['first'] = 'partridge';
  // mhs1['second'] = 'turtledoves';
  // mhs1['fifth'] = 'golden rings';
  // mhs1['Amelia'] = '2241760008';
  // print(mhs1);

  // var mhs2 = Map<int, String>();
  // mhs2[2] = 'helium';
  // mhs2[10] = 'neon';
  // mhs2[18] = 'argon';
  // mhs2[2241760008] = "amelia";
  // print(mhs2);

  /**PRAKTIKUM 4 --TIPE DATA LIST : SPREAD N CONTROL-FLOW OPERATORS */
  //Langkah 1
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  /**Langkah 3 */
  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);
  // var list4 = [2241760008];
  // print(list4);

  /**Langkah 4 */
  // bool promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  /**Langkah 5 */
  // var login = "Manager";
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login case 'Manager') 'Inventory'];
  // print(nav2);

  /**Langkah 6 */
  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);

  /**PRAKTIKUM 5 -- TIPE DATA RECORDS */
  /**Langkah 1 */
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // Langkah 3
  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }

  // var result = tukar((20, 10));
  // print(result);

  // langkah 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ("Amelia", 2241760008);
  // print(mahasiswa);

  //langkah 5
  var mahasiswa2 = ('Amelia', a: 2241760008, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
