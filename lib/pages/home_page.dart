import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/my_photo.jpeg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Atik Hridoy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text('CV/Resume'),
              onTap: () {
                Navigator.pushNamed(context, '/cv');
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My Portfolio!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
