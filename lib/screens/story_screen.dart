import 'package:flutter/material.dart';
import '../data/bible_data.dart';
import 'memory_verse_screen.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(story.imageAsset, height: 200, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              story.content,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Center(
            child: ElevatedButton(
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
          ),
        ],
      ),
    );
  }
}