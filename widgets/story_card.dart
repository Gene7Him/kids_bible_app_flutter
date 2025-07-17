import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  StoryCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}