import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final GlobalKey key;

  ProjectsSection(this.key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: 400,
      color: Colors.grey[200],
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: Text('Project 1'),
              subtitle: Text('Description of project 1...'),
            ),
            ListTile(
              title: Text('Project 2'),
              subtitle: Text('Description of project 2...'),
            ),
            // Add more projects as needed
          ],
        ),
      ),
    );
  }
}
