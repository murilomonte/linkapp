import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blueAccent,
    // Background
    surface: const Color(0xFFF5F5F5), // b2
    // Container -> surfaceContainer
    surfaceContainer: Color(0xFFFFFFFF), // b1
    // Container:hover -> onInverseSurface
    onInverseSurface: Color.fromARGB(255, 243, 243, 243), // Custom
    // Text 
    onSurface: Color(0xFF121212),  // t1
    onSurfaceVariant: Color(0xFF595959), // t4 
    surfaceDim: Color(0xFFD6D6D6) // t2
  ),
);


// html.light-mode {
//     --b1: #FFFFFF;
//     --b2: #F5F5F5;
//     --b3: #FAFAFA;

//     --t1: #121212;
//     --t2: #D6D6D6;
//     --t3: #242424;
//     --t4: #595959;

//     --a1: #2A82FA;

//     /* Shadow */
//     --shadow: 0px 2px 10px -8px rgba(0, 0, 0, 0.2);

// }
// }
