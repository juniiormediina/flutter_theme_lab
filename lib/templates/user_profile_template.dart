import 'package:flutter/material.dart';

import '../organisms/profile_card.dart';

/// El uso de un Template permite que la lógica y el estilo de la interfaz
/// sean reutilizables y que se adapten a diferentes páginas o contextos
/// en la aplicación.
///
/// el UserProfileTemplate, que acepta componentes como el ProfileCard,
/// información adicional, y acciones (botones) que se pasarán como parámetros.
/// Este enfoque permite que el Template sea flexible y adaptable para
/// varias páginas.

class UserProfileTemplate extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final VoidCallback onFollowPressed;
  final VoidCallback onMessagePressed;
  final String aboutText;
  final VoidCallback onViewProjectsPressed;

  const UserProfileTemplate({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.onFollowPressed,
    required this.onMessagePressed,
    required this.aboutText,
    required this.onViewProjectsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ProfileCard(
          name: name,
          description: description,
          imageUrl: imageUrl,
          onFollowPressed: onFollowPressed,
          onMessagePressed: onMessagePressed,
        ),
        const SizedBox(height: 24),
        Text(
          "About $name",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        Text(
          aboutText,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: onViewProjectsPressed,
          child: const Text("View Projects"),
        ),
      ],
    );
  }
}
