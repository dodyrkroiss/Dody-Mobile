import 'dart:io';

void main() {
  // Input data karyawan
  stdout.write('Nama karyawan: ');
  String nama = stdin.readLineSync()!;

  stdout.write('Jam kerja (minggu): ');
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write('Upah per jam: ');
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write('Karyawan tetap? (y/n): ');
  bool isTetap = stdin.readLineSync()!.toLowerCase() == 'y';

  // Hitung gaji
  double gajiKotor = jamKerja * upahPerJam;
  double pajak = isTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print('\n--- HASIL ---');
  print('Nama: $nama');
  print('Status: ${isTetap ? "Tetap" : "Kontrak"}');
  print('Gaji Kotor: Rp ${gajiKotor.toStringAsFixed(0)}');
  print('Pajak: Rp ${pajak.toStringAsFixed(0)}');
  print('Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(0)}');
}
