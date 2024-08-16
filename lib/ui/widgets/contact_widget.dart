import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Hello! I am based in Culleredo, Galiza (Spain) and there are plenty of ways to get in touch with me:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Icon(Icons.phone, size: 32),
              SizedBox(width: 10),
              Text('+998 94 392 00 33',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.email, size: 32),
              SizedBox(width: 10),
              Text('xasankarimovich0033@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(Icons.web, size: 32),
              SizedBox(width: 10),
              Text('www.flutterdev.eu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(
                Icons.person,
                size: 32,
              ),
              SizedBox(width: 10),
              Text('about.me',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/linkedin.svg',
                    height: 45, width: 45),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset('assets/instagram.svg',
                    height: 45, width: 45),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset('assets/whatsapp.svg',
                    height: 45, width: 45),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset('assets/behance.svg',
                    height: 45, width: 45),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
