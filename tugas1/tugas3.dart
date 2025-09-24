import 'dart:io';

void main() {
  List<Map<String, dynamic>> mahasiswa = [];

  // Data mahasiswa contoh (minimal 10)
  mahasiswa.addAll([
    {
      'nim': '001',
      'nama': 'dodi',
      'jurusan': 'Informatika',
      'angkatan': 2021,
      'ipk': 3.5,
    },
    {
      'nim': '002',
      'nama': 'udin',
      'jurusan': 'Sistem Informasi',
      'angkatan': 2021,
      'ipk': 3.2,
    },
    {
      'nim': '003',
      'nama': 'kix',
      'jurusan': 'Teknik Elektro',
      'angkatan': 2022,
      'ipk': 3.8,
    },
    {
      'nim': '004',
      'nama': 'kor22',
      'jurusan': 'Informatika',
      'angkatan': 2020,
      'ipk': 3.6,
    },
    {
      'nim': '005',
      'nama': 'panca',
      'jurusan': 'Sistem Informasi',
      'angkatan': 2022,
      'ipk': 3.4,
    },
    {
      'nim': '006',
      'nama': 'halid',
      'jurusan': 'Teknik Mesin',
      'angkatan': 2021,
      'ipk': 3.1,
    },
    {
      'nim': '007',
      'nama': 'ramzi',
      'jurusan': 'Informatika',
      'angkatan': 2023,
      'ipk': 3.9,
    },
    {
      'nim': '008',
      'nama': 'fai',
      'jurusan': 'Teknik Elektro',
      'angkatan': 2020,
      'ipk': 3.3,
    },
    {
      'nim': '009',
      'nama': 'bagas',
      'jurusan': 'Sistem Informasi',
      'angkatan': 2023,
      'ipk': 3.7,
    },
    {
      'nim': '010',
      'nama': 'Jokowi',
      'jurusan': 'Teknik Mesin',
      'angkatan': 2022,
      'ipk': 3.0,
    },
  ]);

  while (true) {
    print('\n=== SISTEM DATA MAHASISWA ===');
    print('1. Lihat semua mahasiswa');
    print('2. Cari mahasiswa');
    print('3. Keluar');
    stdout.write('Pilih menu (1-3): ');

    String pilihan = stdin.readLineSync()!;

    switch (pilihan) {
      case '1':
        lihatSemuaMahasiswa(mahasiswa);
        break;
      case '2':
        cariMahasiswa(mahasiswa);
        break;
      case '3':
        print('Terima kasih!');
        return;
      default:
        print('Pilihan tidak valid!');
    }
  }
}

void lihatSemuaMahasiswa(List<Map<String, dynamic>> mhs) {
  print('\n=== DAFTAR MAHASISWA ===');
  for (var data in mhs) {
    print('${data['nim']} - ${data['nama']} - ${data['jurusan']}');
  }
}

void cariMahasiswa(List<Map<String, dynamic>> mhs) {
  stdout.write('\nMasukkan NIM atau Nama: ');
  String keyword = stdin.readLineSync()!.toLowerCase();

  var hasil = mhs
      .where(
        (data) =>
            data['nim'].toLowerCase().contains(keyword) ||
            data['nama'].toLowerCase().contains(keyword),
      )
      .toList();

  if (hasil.isEmpty) {
    print('Mahasiswa tidak ditemukan!');
  } else {
    print('\n=== HASIL PENCARIAN ===');
    for (var data in hasil) {
      print('''
NIM     : ${data['nim']}
Nama    : ${data['nama']}
Jurusan : ${data['jurusan']}
Angkatan: ${data['angkatan']}
IPK     : ${data['ipk']}
-------------------''');
    }
  }
}
