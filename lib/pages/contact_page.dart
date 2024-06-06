import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Email: example@example.com',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Phone: (123) 456-7890',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
