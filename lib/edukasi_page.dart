import 'package:flutter/material.dart';

class EdukasiPage extends StatelessWidget {
  const EdukasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Gizi Seimbang')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Apa Itu Gizi Seimbang?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Gizi seimbang adalah susunan makanan sehari-hari yang mengandung zat gizi '
              'dalam jenis dan jumlah yang sesuai dengan kebutuhan tubuh. '
              'Tujuannya agar tubuh tetap sehat, aktif, dan tumbuh dengan baik.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              '4 Pilar Gizi Seimbang:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('1. Mengonsumsi aneka ragam makanan'),
            Text('2. Membiasakan perilaku hidup bersih'),
            Text('3. Melakukan aktivitas fisik'),
            Text('4. Memantau berat badan secara teratur'),
            SizedBox(height: 30),
            Text(
              'Contoh makanan bergizi seimbang: nasi, sayur, lauk pauk, buah, dan susu.',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}