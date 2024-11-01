import 'package:flutter/material.dart';

import '../atoms/primary_button.dart';
import '../atoms/secondary_button.dart';

///ProfileCard es un organismo que combina átomos (texto y botones) y moléculas
///en un componente reutilizable más completo, ideal para representar perfiles
///de usuario en una aplicación.

class ProfileCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final VoidCallback onFollowPressed;
  final VoidCallback onMessagePressed;

  const ProfileCard({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.onFollowPressed,
    required this.onMessagePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 40,
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryButton(
                  label: "Follow",
                  onPressed: onFollowPressed,
                ),
                SecondaryButton(
                  label: "Message",
                  onPressed: onMessagePressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
