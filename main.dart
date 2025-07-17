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
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}