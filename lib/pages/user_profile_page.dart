import 'package:flutter/material.dart';

import '../atoms/primary_button.dart';
import '../organisms/profile_card.dart';

/// UserProfilePage es un ejemplo de una Page en el sistema de diseño, que
/// utiliza organismos y otros componentes para crear una interfaz completa
/// y cohesiva.

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ProfileCard(
            name: "Jane Doe",
            description: "Senior Software Engineer | Tech Enthusiast",
            imageUrl: "https://via.placeholder.com/150",
            onFollowPressed: () {
              print("Follow Button Pressed!");
            },
            onMessagePressed: () {
              print("Message Button Pressed!");
            },
          ),
          const SizedBox(height: 24),
          Text(
            "About Jane",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          const Text(
            "Jane is a senior software engineer with over 10 years of experience in mobile development. She specializes in Flutter and has contributed to numerous open-source projects.",
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            label: "View Projects",
            onPressed: () {
              print("View Projects Button Pressed!");
            },
          ),
        ],
      ),
    );
  }
}
