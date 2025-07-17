import 'package:flutter/material.dart';

class MemoryVerseScreen extends StatefulWidget {
  final String verse;

  MemoryVerseScreen({required this.verse});

  @override
  _MemoryVerseScreenState createState() => _MemoryVerseScreenState();
}

class _MemoryVerseScreenState extends State<MemoryVerseScreen> {
  final List<String> words = ['But', 'Noah', 'found', 'grace', 'in', 'the', 'eyes', 'of', 'the', 'Lord'];
  List<String> selectedWords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Memory Verse')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Wrap(
              spacing: 8.0,
              children: words.map((word) {
                return ElevatedButton(
                  child: Text(word),
                  onPressed: () {
                    setState(() {
                      selectedWords.add(word);
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              selectedWords.join(' '),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Reset'),
              onPressed: () {
                setState(() {
                  selectedWords.clear();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}