import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = MediaQuery.of(context).size.width;
        double avatarRadius = screenWidth * 0.1;
        double padding = screenWidth * 0.04;
        double textSize = screenWidth * 0.05;

        return Container(
          padding: EdgeInsets.all(padding),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: avatarRadius,
                backgroundImage: AssetImage(
                    'assets/images/my_photo.jpeg'), // Update with your image asset
              ),
              SizedBox(height: padding),
              Text(
                "Hello, I'm",
                style: TextStyle(
                  fontSize: textSize,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: padding * 0.5),
              Text(
                "Atikuzzaman Hridoy",
                style: TextStyle(
                  fontSize: textSize * 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: padding * 0.5),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "A passionate Android developer...",
                    textStyle: TextStyle(
                      fontSize: textSize * 0.6,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              SizedBox(height: padding),
              Row(
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'YOUR_FACEBOOK_URL';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'https://github.com/Atik-hridoy';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    color: Colors.white,
                    onPressed: () async {
                      const url =
                          'https://www.linkedin.com/in/atik-ahmed-ridoy-5678aa179/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.envelope),
                    color: Colors.white,
                    onPressed: () async {
                      final Uri params = Uri(
                        scheme: 'mailto',
                        path: 'atik.hridoy.00@gmail.com',
                        query:
                            'subject=Contacting You&body=Hello,', // Add your email and query parameters here
                      );
                      var url = params.toString();
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ],
              ),
              SizedBox(height: padding),
              ElevatedButton(
                onPressed: () async {
                  const url = 'assets/cv/MY_CV.pdf';
                  final uri = Uri.parse(url);
                  if (await canLaunch(uri.toString())) {
                    await launch(uri.toString());
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(
                      horizontal: padding * 2, vertical: padding * 0.75),
                ),
                child: Text(
                  "SEE RESUME",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
