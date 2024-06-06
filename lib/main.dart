import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/cv_page.dart';
import 'pages/projects_page.dart';
import 'pages/contact_page.dart';

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
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/cv': (context) => CvPage(),
        '/projects': (context) => ProjectsPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}
