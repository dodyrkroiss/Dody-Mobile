import 'dart:io';

void main() {
  // Data langsung dalam list
  var data = [
    '001 - dodot - Informatika - 3.5',
    '002 - ramz - Sistem Informasi - 3.2',
    '003 - rizki zit - Teknik Elektro - 3.8',
    '004 - husein - Informatika - 3.6',
    '005 - pancs - Sistem Informasi - 3.4',
    '006 - haldskuy - Teknik Mesin - 3.1',
    '007 - alan - Informatika - 3.9',
    '008 - rahulman - Teknik Elektro - 3.3',
    '009 - rifai - Sistem Informasi - 3.7',
    '010 - tung tung sahur - Teknik Mesin - 3.0',
  ];

  // Tampilkan semua
  print('=== DATA MAHASISWA ===');
  data.forEach(print);

  // Cari
  print('\n🔍 Cari nama atau NIM:');
  String cari = stdin.readLineSync()!;

  print('\n📋 Hasil Pencarian:');
  for (var mhs in data) {
    if (mhs.toLowerCase().contains(cari.toLowerCase())) {
      var parts = mhs.split(' - ');
      print('NIM: ${parts[0]}');
      print('Nama: ${parts[1]}');
      print('Jurusan: ${parts[2]}');
      print('IPK: ${parts[3]}');
      print('---');
    }
  }
}
