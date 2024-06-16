import 'package:flutter/material.dart';
import 'package:uts_pmo/componenet/image.dart'; // Pastikan Anda mengimpor file komponen

class RawatPage extends StatelessWidget {
  const RawatPage({super.key}); // Perbaikan pada constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icon panah kembali
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          // Gambar di sebelah kanan AppBar
          Image.asset(
            './assets/Set.png',
            width: 40, // Sesuaikan lebar gambar sesuai kebutuhan Anda
            height: 40, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rawat inap",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 24),
            ),
            // Memanggil komponen ImageWithTitle
            ImageWithTitle(
              imagePath: './assets/merta1.png',
              title: 'Nama Tempat',
              address: 'Alamat Tempat',
              description: 'Deskripsi bla bla bla dan lain sebagainya.',
            ),
            ImageWithTitle(
              imagePath:
                  './assets/merta1.png', // Sesuaikan dengan path gambar Anda
              title: 'Nama Tempat',
              address: 'Alamat Tempat',
              description: 'Deskripsi bla bla bla dan lain sebagainya.',
            ),
            ImageWithTitle(
              imagePath:
                  './assets/merta1.png', // Sesuaikan dengan path gambar Anda
              title: 'Nama Tempat',
              address: 'Alamat Tempat',
              description: 'Deskripsi bla bla bla dan lain sebagainya.',
            ),
            ImageWithTitle(
              imagePath:
                  './assets/merta1.png', // Sesuaikan dengan path gambar Anda
              title: 'Nama Tempat',
              address: 'Alamat Tempat',
              description: 'Deskripsi bla bla bla dan lain sebagainya.',
            ),
            ImageWithTitle(
              imagePath:
                  './assets/merta1.png', // Sesuaikan dengan path gambar Anda
              title: 'Nama Tempat',
              address: 'Alamat Tempat',
              description: 'Deskripsi bla bla bla dan lain sebagainya.',
            ),
          ],
        ),
      ),
    );
  }
}
