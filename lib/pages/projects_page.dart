import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView(
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
    );
  }
}
