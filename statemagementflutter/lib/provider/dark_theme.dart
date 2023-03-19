import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class DarkThemeProvider with ChangeNotifier {
  var _themeMode = ThemeData.light();

  ThemeData get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
