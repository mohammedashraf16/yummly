import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yumly/features/theme/dark_mode.dart';
import 'package:yumly/features/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool("isDark") ?? false;
    _themeData = isDark ? darkMode : lightMode;
    notifyListeners();
  }


  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();

    if (_themeData == darkMode) {
      _themeData = lightMode;
      await prefs.setBool("isDark", false);
    } else {
      _themeData = darkMode;
      await prefs.setBool("isDark", true);
    }

    notifyListeners();
  }
}
