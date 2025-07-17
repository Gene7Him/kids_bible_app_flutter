import 'package:flutter/material.dart';
import 'home_screen.dart';

class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Center(child: Text('Games Coming Soon!')),
    Center(child: Text('Rewards Coming Soon!')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Stories'),
          BottomNavigationBarItem(icon: Icon(Icons.videogame_asset), label: 'Games'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Rewards'),
        ],
      ),
    );
  }
}