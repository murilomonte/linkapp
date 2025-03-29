import 'package:flutter/material.dart';
import 'package:linkapp/src/view/home_page.dart';

void main() {
  runApp(LinkApp());
}

class LinkApp extends StatelessWidget {
  const LinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
