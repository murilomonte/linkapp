import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blueAccent,
    // Background
    surface: const Color(0xFF121212), // b2
    // Container -> surfaceContainer
    surfaceContainer: Color(0xFF242424), // b1
    // Container:hover -> onInverseSurface
    onInverseSurface: Color(0xFF2D2D2D), // Custom
    // Text 
    onSurface: Color(0xFFF0F0F0),  // t1
    onSurfaceVariant: Color(0xFFB3B3B3), // t4 
    surfaceDim: Color(0xFF363636) // t2
  ),
);

// html.dark-mode {
//     /* Background */
//     --b1: #242424;
//     --b2: #121212;
//     --b3: #2E2E2E;

//     /* Text */
//     --t1: #F0F0F0;
//     --t2: #363636;
//     --t3: #E3E3E3;
//     --t4: #B3B3B3;

//     /* Accent */
//     --a1: #7856FF;

//     /* Shadow */
//     --shadow: 0px 2px 10px -8px rgba(0, 0, 0, 0.2);
// }

