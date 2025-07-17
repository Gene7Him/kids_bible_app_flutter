import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(KidsBibleApp());
}

class KidsBibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Bible App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFF7E6),
        primarySwatch: Colors.orange,
        fontFamily: 'Fredoka',
      ),
      home: HomeScreen(),
    );
  }
}