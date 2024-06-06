import 'package:flutter/material.dart';

class CvPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CV/Resume')),
      body: Center(
        child: Text(
          'Here is my CV/Resume...',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
