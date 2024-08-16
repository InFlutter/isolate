import 'package:flutter/material.dart';
import 'package:lesson_89/services/project_service.dart';

class ProjectUrl extends StatelessWidget {
  ProjectUrl({super.key});

  final projectService = ProjectService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => projectService
                .launchUlrFunc("https://github.com/xasankarimovich"),
            child: const Column(
              children: [
                Text(
                  "Tadbiro",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mening barcha ilovalarim.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () => projectService
                .launchUlrFunc("https://github.com/xasankarimovich/puzzle"),
            child: const Column(
              children: [
                Text(
                  "Puzzle Game",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Puzzle Game Qiziqarli va sodda o'yin.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () => ("https://github.com/xasankarimovich/file_download_89"),
            child: const Column(
              children: [
                Text(
                  "Library",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kitoblarni online PDF holda o'qish uchun ishlatiladigan ilova.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
