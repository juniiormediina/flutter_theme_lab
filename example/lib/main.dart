import 'package:flutter/material.dart';
import 'package:flutter_theme_lab/atoms/primary_button.dart';
import 'package:flutter_theme_lab/atoms/secondary_button.dart';
import 'package:flutter_theme_lab/foundations/theme/theme.dart';
import 'package:flutter_theme_lab/molecules/info_card.dart';
import 'package:flutter_theme_lab/organisms/profile_card.dart';
import 'package:flutter_theme_lab/pages/user_profile_page.dart';
import 'package:flutter_theme_lab/templates/user_profile_template.dart';

void main() {
  runApp(const MyPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeLab,
      home: const MyTemplate(),
    );
  }
}

class MyTemplate extends StatelessWidget {
  const MyTemplate({super.key});

  /// muestra el UserProfilePage utilizando el UserProfileTemplate, que organiza
  /// el diseño del perfil de usuario. El UserProfileTemplate es un esqueleto
  /// reutilizable que permite mostrar diferentes datos de perfil, garantizando
  /// una estructura y estilo consistentes.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: UserProfileTemplate(
        name: "Jane Doe",
        description: "Senior Software Engineer | Tech Enthusiast",
        imageUrl: "https://via.placeholder.com/150",
        onFollowPressed: () {
          print("Follow Button Pressed!");
        },
        onMessagePressed: () {
          print("Message Button Pressed!");
        },
        aboutText:
            "Jane is a senior software engineer with over 10 years of experience in mobile development. She specializes in Flutter and has contributed to numerous open-source projects.",
        onViewProjectsPressed: () {
          print("View Projects Button Pressed!");
        },
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  /// muestra el ProfileCard del usuario y otros componentes adicionales. Esta
  /// pantalla representa la capa más alta del diseño, utilizando organismos,
  /// moléculas y átomos para construir una interfaz completa.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Lab',
      theme: lightThemeLab,
      home: const UserProfilePage(),
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
            /// muestra el PrimaryButton y el SecondaryButton en el centro de
            /// la pantalla, cada uno con sus respectivos estilos. El
            /// PrimaryButton usa el color principal, mientras que el
            /// SecondaryButton tiene un borde y texto en el color secundario.
            /// Al hacer clic en cualquiera de los botones, se imprime un
            /// mensaje en la consola.
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

            /// InfoCard es un ejemplo de molécula que combina varios átomos
            /// (texto y botón) para crear un componente reutilizable que
            /// presenta información y permite una acción relacionada.
            InfoCard(
              title: "Welcome to Flutter Theme Lab",
              description:
                  "Explore reusable components and design tokens with Atomic Design principles.",
              onPressed: () {
                print("InfoCard Button Pressed!");
              },
            ),

            /// un ProfileCard, que combine varias moléculas y átomos para
            /// mostrar la información de un perfil de usuario, incluyendo su
            /// foto, nombre, descripción y botones para realizar acciones
            /// (como "Seguir" o "Mensaje"). Este componente es más complejo
            /// que una molécula y puede contener varias moléculas.
            ProfileCard(
              name: "John Doe",
              description: "Mobile Developer | Flutter Enthusiast",
              imageUrl: "https://via.placeholder.com/150",
              onFollowPressed: () {
                print("Follow Button Pressed!");
              },
              onMessagePressed: () {
                print("Message Button Pressed!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
