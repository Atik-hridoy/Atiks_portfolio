import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'I am a Flutter developer with experience in building cross-platform applications...',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
