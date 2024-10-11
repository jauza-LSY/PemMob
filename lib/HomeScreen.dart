import 'package:flutter/material.dart';
 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abraham'),
        backgroundColor: Colors.green,
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your profile image asset
        ),
      ),
      body: Column(
        children: [
          sectionCard('Biodata'),
          sectionCard('Biodata'),
          sectionCard('Biodata'),
          sectionCard('Biodata'),
          sectionCard('Biodata'),
          sectionCard('Biodata'),
          sectionCard('Biodata'), 
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget sectionCard(String title) {
    return Card(
      margin: EdgeInsets.all(10),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: ListTile(
        leading: Icon(Icons.image, size: 50),
        title: Text(title),
      ),
    );
  }
}
