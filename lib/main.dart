import 'package:flutter/material.dart';
import 'sections/header_section.dart';
import 'sections/services_section.dart';
import 'sections/team_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atik Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderSection(),
            ServicesSection(),
            TeamSection(),
          ],
        ),
      ),
    );
  }
}
