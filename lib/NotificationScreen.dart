import 'package:flutter/material.dart';
 
class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            notificationCard('Modul 1', 'date', 'Deskripsi Modul'),
            notificationCard('Kegiatan 1', 'date', 'Deskripsi Modul'),
            notificationCard('Modul 2', 'date', 'Deskripsi Modul'),
            notificationCard('Kegiatan 2', 'date', 'Deskripsi Modul'),
            notificationCard('Modul 3', 'date', 'Deskripsi Modul'),
            notificationCard('Kegiatan 3', 'date', 'Deskripsi Modul'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  Widget notificationCard(String title, String date, String description) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          color: Colors.grey,
        ),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            Text(description),
          ],
        ),
      ),
    );
  }
}
