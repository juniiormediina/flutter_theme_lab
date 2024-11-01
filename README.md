<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Flutter Theme Lab

`flutter_theme_lab` es un paquete de Flutter que centraliza tokens de diseño (colores, tipografía,
sombras) y componentes reutilizables para aplicaciones, diseñado siguiendo la arquitectura
de [Atomic Design](https://atomicdesign.bradfrost.com/). Este paquete está orientado a equipos que
necesitan una gestión eficiente de estilos y componentes, asegurando la consistencia en la interfaz
de usuario.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

## Características

- **Tokens de diseño**: Centralización de colores, tipografía y sombras para un uso consistente en
  toda la aplicación.
- **Componentes reutilizables**: Implementación de Atomic Design con componentes en tres niveles
  principales:
- **Átomos**: Componentes fundamentales como botones e íconos.
- **Moléculas**: Componentes intermedios, como tarjetas.
- **Organismos**: Componentes avanzados que pueden contener moléculas, como barras de navegación.

## Comenzando

### 1. Instalación

Agrega el paquete a tu archivo `pubspec.yaml`:

  ```yaml
  dependencies:
    flutter_theme_lab:
      git:
        url: https://github.com/juniiormediina/flutter_theme_lab
  ```

### 1. Importación

Importa los tokens y componentes en los archivos donde los necesites:

  ```dart
  import 'package:flutter_theme_lab/tokens/colors.dart';
  import 'package:flutter_theme_lab/components/atoms/button.dart';
  ```

## Uso

### Ejemplo de Uso de Tokens de Color

  ```dart
  import 'package:flutter_theme_lab/tokens/colors.dart';

  void main() {
    Color primaryColor = ThemeLabColors.primaryColor;
  }
  ```

Para ver el paquete en funcionamiento, se incluirá un proyecto de ejemplo en el repositorio. Este
ejemplo mostrará cómo utilizar los tokens y componentes en una aplicación real, facilitando su
integración y uso en proyectos propios.

## Estructura de Carpetas

- lib/tokens: Tokens de diseño, como colores, tipografía y sombras.
- lib/atoms: Componentes básicos, como botones e íconos.
- lib/molecules: Componentes compuestos, como tarjetas.
- lib/organisms: Componentes de nivel superior, como barras de navegación.

## Información Adicional

Para más información, contribuciones o reporte de errores,
visita [nuestro repositorio en GitHub](https://github.com/juniiormediina/flutter_theme_lab).
Agradecemos cualquier colaboración que ayude a mejorar el paquete y su documentación.

## Contribuir

Para contribuir, realiza un fork del proyecto y crea un pull request. Por favor, consulta nuestras
guías de contribución en el repositorio.
