import 'package:flutter/material.dart';

import '../foundations/colors.dart';

/// PrimaryButton es ideal para acciones primarias en la aplicación y se puede
/// reutilizar fácilmente en distintas partes del proyecto.

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ThemeLabColorsFoundation.colorButtonPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: textStyle,
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
