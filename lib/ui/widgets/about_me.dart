import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(radius: 100, child: Icon(Icons.person, size: 120)),
        SizedBox(height: 30),
        Text(
          "Xasan Utayev",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          "Flutter Developer",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Text(
          "Foundation",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Text(
          "+1 years experience",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              "Tashkent, Uzbekistan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
