import 'package:flutter/material.dart';
import 'package:linkapp/src/controllers/theme_controller.dart';
import 'package:linkapp/src/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeController(),
      child: LinkApp(),
    )
  );
}

class LinkApp extends StatelessWidget {
  const LinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeController>().themeData,
      home: HomePage(),
    );
  }
}
