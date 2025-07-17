import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MascotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/lottie/dove.json', height: 120),
        Text(
          'Hi there! Ready to explore a Bible adventure?',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ],
    );
  }
}

