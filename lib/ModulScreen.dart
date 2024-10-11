import 'package:flutter/material.dart';

class ModulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MODUL'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            moduleCard('Modul 1', 'date', 'Deskripsi Modul'),
            moduleCard('Modul 2', 'date', 'Deskripsi Modul'),
            moduleCard('Modul 3', 'date', 'Deskripsi Modul'),
            moduleCard('Modul 4', 'date', 'Deskripsi Modul'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget moduleCard(String title, String date, String description) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              color: Colors.grey[300],
              child: Center(child: Text('Image Placeholder')),
            ),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(date, style: TextStyle(color: Colors.grey)),
            Text(description),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Baca'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
