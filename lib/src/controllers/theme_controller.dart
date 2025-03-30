import 'package:flutter/material.dart';
import 'package:linkapp/src/theme/dark_theme.dart';
import 'package:linkapp/src/theme/light_theme.dart';

class ThemeController extends ChangeNotifier {
  ThemeData _themeData = darkMode;

  // Getter
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  // Setter
  set themeData(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  // Altera o tema
  void toggleTheme() {
    if (isDarkMode) {
      _themeData = lightMode;
    } else {
      _themeData = darkMode;
    }
    notifyListeners();
  }
}