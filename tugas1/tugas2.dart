import 'dart:io';

void main() {
  // Input skor dari user
  stdout.write('Masukkan skor ujian (0-100): ');
  double skor = double.parse(stdin.readLineSync()!);

  // Validasi input
  if (skor < 0 || skor > 100) {
    print('Error: Skor harus antara 0-100');
    return;
  }

  String grade;

  // Menentukan grade menggunakan if-else
  if (skor >= 85) {
    grade = 'A';
  } else if (skor >= 70) {
    grade = 'B';
  } else if (skor >= 60) {
    grade = 'C';
  } else if (skor >= 50) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  // Menampilkan hasil
  print('Skor Anda: ${skor.toStringAsFixed(0)}');
  print('Grade Anda: $grade');
}
