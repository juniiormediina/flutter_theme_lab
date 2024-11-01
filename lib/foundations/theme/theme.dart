import 'package:flutter/material.dart';
import 'package:flutter_theme_lab/foundations/colors.dart';
import 'package:flutter_theme_lab/foundations/typography.dart';

final lightThemeLab = ThemeData(
  primaryColor: ThemeLabColorsFoundation.primaryColor,
  primarySwatch: ThemeLabColorsFoundation.primaryColorMat,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: ThemeLabTypographyFoundation.fontSizeH1,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    displayMedium: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: ThemeLabTypographyFoundation.fontSizeH2,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    displaySmall: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH3,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    headlineMedium: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH4,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    headlineSmall: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH5,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    titleLarge: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH6,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ThemeLabColorsFoundation.primaryColorMat)
      .copyWith(background: ThemeLabColorsFoundation.bgGray),
);

final darkThemeLab = ThemeData(
  primaryColor: ThemeLabColorsFoundation.primaryColor,
  primarySwatch: ThemeLabColorsFoundation.primaryColorMat,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: ThemeLabTypographyFoundation.fontSizeH1,
      color: ThemeLabColorsFoundation.lightTextColors,
    ),
    displayMedium: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: ThemeLabTypographyFoundation.fontSizeH2,
      color: ThemeLabColorsFoundation.lightTextColors,
    ),
    displaySmall: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH3,
      color: ThemeLabColorsFoundation.lightTextColors,
    ),
    headlineMedium: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH4,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    headlineSmall: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH5,
      color: ThemeLabColorsFoundation.darkTextColors,
    ),
    titleLarge: TextStyle(
      fontFamily: ThemeLabTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ThemeLabTypographyFoundation.fontSizeH6,
      color: ThemeLabColorsFoundation.lightTextColors,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ThemeLabColorsFoundation.primaryColorMat)
      .copyWith(background: ThemeLabColorsFoundation.bgDark),
);
