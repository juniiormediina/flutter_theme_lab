import 'package:flutter/material.dart';
import 'package:flutter_theme_lab/atoms/primary_button.dart';
import 'package:flutter_theme_lab/atoms/secondary_button.dart';
import 'package:flutter_theme_lab/foundations/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeLab,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Lab Example'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              label: "Primary Action",
              onPressed: () {
                print("Primary Button Pressed!");
              },
            ),
            const SizedBox(height: 16),
            SecondaryButton(
              label: "Secondary Action",
              onPressed: () {
                print("Secondary Button Pressed!");
              },
            ),
          ],
        )));
  }
}
