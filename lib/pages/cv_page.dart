import 'package:flutter/material.dart';

class CvSection extends StatelessWidget {
  final GlobalKey key;

  CvSection(this.key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: 400,
      color: Colors.white,
      child: Center(
        child: Text(
          'Here is my CV/Resume...',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
