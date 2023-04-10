import 'package:flutter/material.dart';

class ToonFlix extends StatelessWidget {
  const ToonFlix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          '🤷‍♂️ 오늘의 웹툰 🤷‍♂️',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}
