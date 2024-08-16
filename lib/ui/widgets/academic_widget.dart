import 'package:flutter/material.dart';

class AcademicWidget extends StatelessWidget {
  const AcademicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Academic backgr.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          const SizedBox(height: 20),
          Text(
            "School",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Osh, Ch.Aitmatov",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text("Year: 2008 - 2019"),
          const SizedBox(height: 20),
          Text(
            "University",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Osh State University, Information Technology",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text("Year: 2019 - 2023"),
          const SizedBox(height: 20),
          Text(
            "Private school",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Tashkent, Najot ta'lim",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text("Year: 2023 - 2024"),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
