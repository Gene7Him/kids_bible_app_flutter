import 'package:flutter/material.dart';
import '../data/bible_data.dart';

class StoryScreen extends StatelessWidget {
  final String storyId;

  StoryScreen({required this.storyId});

  @override
  Widget build(BuildContext context) {
    final story = stories.firstWhere((s) => s.id == storyId);

    return Scaffold(
      appBar: AppBar(
        title: Text(story.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          story.content,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Image.asset(story.imageAsset, height: 200, fit: BoxFit.cover),


  ElevatedButton(
  child: Text('Memory Verse Challenge'),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MemoryVerseScreen(verse: "Genesis 6:8"),
      ),
    );
  },
),

}