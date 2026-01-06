import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'theme_tokens.dart';

final defaultTheme = MixThemeData(
  colors: {
    // Button colors
    buttonColor: const Color(0xFF6200EE), // Material Purple 500
    buttonVariantColor: const Color(0xFF3700B3), // Material Purple 700
    // Informational messages
    informationalColor: const Color(0xFF03DAC6), // Material Teal 200
    informationalVariantColor: const Color(0xFF018786), // Material Teal 700
    // Backgrounds and states
    backgroundColor: const Color(0xFFFFFFFF), // White
    backgroundVariantColor: const Color(0xFFF5F5F5), // Light Gray
    errorColor: const Color(0xFFB00020), // Material Red 700
    warningColor: const Color(0xFFFFC107), // Amber 500
    debugColor: const Color(0xFF9C27B0), // Purple 500
    // Allergy colors (use a distinct palette)
    glutenColor: const Color(0xFF4CAF50), // Green
    lactoseColor: const Color(0xFFFF9800), // Orange
    nutsColor: const Color(0xFF795548), // Brown
    // Text/icon colors on backgrounds
    onButtonColor: const Color(0xFFFFFFFF), // White
    onInformationalActionColor: const Color(0xFF000000), // Black
    onInformationalColor: const Color(0xFF000000), // Black
    onBackgroundColor: const Color(0xFF000000), // Black
    onErrorColor: const Color(0xFFFFFFFF), // White
    onWarningColor: const Color(0xFF000000), // Black
    onDebugColor: const Color(0xFFFFFFFF), // White
  },
  radii: {
    smallRadius: const Radius.circular(4.0),
    largeRadius: const Radius.circular(8.0),
  },
  spaces: {
    smallSpace: 4.0,
    mediumSpace: 8.0,
    largeSpace: 16.0,
    extraLargeSpace: 32.0,
  },
  // Fontsize is in cm
  textStyles: {
    h1Font: const TextStyle(fontSize: 0.23, fontWeight: FontWeight.bold),
    h2Font: const TextStyle(fontSize: 0.17, fontWeight: FontWeight.bold),
    bodyFont: const TextStyle(fontSize: 0.12),
    captionFont: const TextStyle(fontSize: 0.08),
    buttonFont: const TextStyle(fontSize: 0.15, fontWeight: FontWeight.w500),
  },
);
