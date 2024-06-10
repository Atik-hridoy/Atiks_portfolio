import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meet Expert Team.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamCard(
                name: "Mike Washoski",
                role: "CEO",
                image: 'assets/images/team1.jpg',
              ),
              TeamCard(
                name: "Hanna Smith",
                role: "Designer",
                image: 'assets/images/team2.jpg',
              ),
              TeamCard(
                name: "Lexi Black",
                role: "Developer",
                image: 'assets/images/team3.jpg',
              ),
              TeamCard(
                name: "Kevin Widagdo",
                role: "Marketer",
                image: 'assets/images/team4.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamCard extends StatelessWidget {
  final String name;
  final String role;
  final String image;

  TeamCard({required this.name, required this.role, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage(image), // Update with your image asset
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              role,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
