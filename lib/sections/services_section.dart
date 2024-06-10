import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What We Do.",
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
              ServiceCard(
                icon: Icons.branding_watermark,
                title: "Brand Identity",
                description: "Creating unique brand identities.",
              ),
              ServiceCard(
                icon: Icons.web,
                title: "Website Design",
                description: "Designing responsive websites.",
              ),
              ServiceCard(
                icon: Icons.design_services,
                title: "UI & UX Design",
                description: "Crafting user-friendly interfaces.",
              ),
              ServiceCard(
                icon: Icons.video_label,
                title: "Video Marketing",
                description: "Engaging videos for your brand.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  ServiceCard(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 48,
              color: Colors.green,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
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
