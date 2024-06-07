import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  final GlobalKey key;

  AboutSection(this.key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: 400,
      color: Colors.grey[200],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'About me: I am a Flutter developer with experience in building cross-platform applications...',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
