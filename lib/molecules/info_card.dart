import 'package:flutter/material.dart';

import '../atoms/primary_button.dart';
import '../foundations/colors.dart';

/// InfoCard es un ejemplo de molécula que combina varios átomos (texto y botón)
/// para crear un componente reutilizable que presenta información y permite una
/// acción relacionada.

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ThemeLabColorsFoundation.primaryColor.withOpacity(0.05),
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            PrimaryButton(
              label: "Learn More",
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
