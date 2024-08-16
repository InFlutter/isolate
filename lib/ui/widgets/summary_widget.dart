import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Summary",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Icon(Icons.receipt, color: Colors.deepPurple, size: 50),
            Text(
              "Polivalent",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Plenty of skills around communication, media, web and advertising.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 25),
            Icon(Icons.wallet_travel, color: Colors.deepPurple, size: 50),
            Text(
              "Ecxerience",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "More than 10 years working in design fields, with Adobe Creative Suite, Figma and collaborative tools.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 25),
            Icon(Icons.messenger_outline, color: Colors.deepPurple, size: 50),
            Text(
              "Open Minded",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Always looking for the continuous improvement and ready to learn about the newest.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 25),
            Icon(Icons.face, color: Colors.deepPurple, size: 50),
            Text(
              "Empathic & humble",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "The user is in the center.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
