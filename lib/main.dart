import 'package:flutter/material.dart';
import 'package:wr_music/items.dart'; // Import the ItemsPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      home: ItemsPage(), // Use the ItemsPage widget
    );
  }
}
