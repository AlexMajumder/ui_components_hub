import 'package:flutter/material.dart';

class IntroComponent extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IntroComponent(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 400,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700],fontSize: 16),
          ),
        )
      ],
    );
  }
}
