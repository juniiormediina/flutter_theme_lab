import 'package:flutter/material.dart';

import '../foundations/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: ThemeLabColorsFoundation.colorButtonSecondary,
        side: const BorderSide(
            color: ThemeLabColorsFoundation.colorButtonSecondary),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: textStyle ??
            const TextStyle(color: ThemeLabColorsFoundation.darkTextColors),
      ),
    );
  }
}
