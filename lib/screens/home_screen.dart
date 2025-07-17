import 'package:flutter/material.dart';
import '../data/bible_data.dart';
import '../widgets/mascot_widget.dart';
import '../widgets/story_card.dart';
import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MascotWidget(),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];
                  return StoryCard(
                    title: story.title,
                    imageAsset: story.imageAsset,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoryScreen(storyId: story.id),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
