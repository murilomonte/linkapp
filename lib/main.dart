import 'package:flutter/material.dart';
import 'package:linkapp/src/theme/dark_theme.dart';
import 'package:linkapp/src/theme/light_theme.dart';
import 'package:linkapp/src/view/home_page.dart';

void main() {
  runApp(LinkApp());
}

class LinkApp extends StatelessWidget {
  const LinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
