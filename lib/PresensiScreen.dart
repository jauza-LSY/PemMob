import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PresensiScreen(),
    );
  }
}

class PresensiScreen extends StatefulWidget {
  @override
  _PresensiScreenState createState() => _PresensiScreenState();
}

class _PresensiScreenState extends State<PresensiScreen> {
  List<Attendance> attendances = [ 
    Attendance('John Doe', true),
    Attendance('Jane Smith', false),
    Attendance('Michael Johnson', true),
    Attendance('Emily Davis', false),
    Attendance('Chris Brown', true),
    Attendance('Patricia Green', true),
    Attendance('David Wilson', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presensi '),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: attendances.length,
        itemBuilder: (context, index) {
          return attendanceRow(attendances[index], index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: generatePdf,
        child: Icon(Icons.download),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget attendanceRow(Attendance attendance, int index) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/profile.jpg'), // Replace with member profile image
        ),
        title: Text(attendance.name),
        subtitle: Text(attendance.isPresent ? 'Hadir' : 'Absen'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => editAttendance(index),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => deleteAttendance(index),
            ),
          ],
        ),
      ),
    );
  }

  void editAttendance(int index) {
    // Implement edit functionality here
  }

  void deleteAttendance(int index) {
    setState(() {
      attendances.removeAt(index);
    });
  }

  void generatePdf() {
    // Implement PDF generation here
  }
}

class Attendance {
  String name;
  bool isPresent;

  Attendance(this.name, this.isPresent);
}
