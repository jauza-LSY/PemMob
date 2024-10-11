import 'package:flutter/material.dart';

class AbsensiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presensi'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            attendanceRow('Penjelajahan', 'Hadir', 'assets/penjelajahan.jpg', true),
            attendanceRow('Jambore', 'Hadir', 'assets/jambore.jpg', true),
            attendanceRow('Perkemahan', 'Absen', 'assets/perkemahan.jpg', false),
            attendanceRow('Baris-Berbaris', 'Hadir', 'assets/baris_berbaris.jpg', true),
            attendanceRow('Bersih Alat', 'Hadir', 'assets/bersih_alat.jpg', true),
            attendanceRow('Upacara', 'Hadir', 'assets/upacara.jpg', true),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

Widget attendanceRow(String title, String status, String imagePath, bool isPresent) {
  return Card(
    margin: EdgeInsets.all(10),
    child: ListTile(
      leading: Container(
        width: 50,
        height: 50,
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
      title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      subtitle: Text(status),
      trailing: Icon(
        isPresent ? Icons.check_circle : Icons.cancel,
        color: isPresent ? Colors.green : Colors.red,
      ),
    ),
  );
}