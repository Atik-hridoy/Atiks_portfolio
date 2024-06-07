import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey key;

  ContactSection(this.key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: 400,
      color: Colors.white,
      child: Center(
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
