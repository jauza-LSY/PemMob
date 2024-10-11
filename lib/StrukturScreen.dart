import 'package:flutter/material.dart';

class StrukturScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Static image at the top
          Container(
            height: 300.0, // Make the top image larger
            width: double.infinity,
            child: Image.asset('assets/bg.jpeg', fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0, // Adjust the size for the ListTile images
                  width: 150.0,
                  child: Image.asset('assets/image1.jpeg', fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text('Cipung Abubu'),
                Text('Ketua Umum'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset('assets/image2.jpeg', fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text('Abe Cekut'),
                Text('Wakil Ketua Umum'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset('assets/image3.jpeg', fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text('Ucel'),
                Text('Sekretaris'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
