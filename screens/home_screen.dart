import 'package:flutter/material.dart';
import '../widgets/story_card.dart';
import '../data/bible_data.dart';
import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kids Bible App'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: stories.map((story) {
          return StoryCard(
            title: story.title,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoryScreen(storyId: story.id),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}