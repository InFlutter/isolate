import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            'Skills: Tech',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                _buildSkillItem('Flutter', Icons.image),
                _buildSkillItem('C', Icons.design_services),
                _buildSkillItem('Python', Icons.picture_as_pdf),
                _buildSkillItem('Dart', Icons.movie),
                _buildSkillItem('Android Studio', Icons.design_services),
                _buildSkillItem('VS Code', Icons.code),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(String skill, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 40),
          const SizedBox(width: 16),
          Text(
            skill,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
