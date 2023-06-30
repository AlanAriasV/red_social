import 'package:flutter/material.dart';

import 'enums.dart';

class ProviderData with ChangeNotifier {
  ThemeType _themeMode = ThemeType.light;

  set themeMode(ThemeType value) {
    _themeMode = value;
    notifyListeners();
    // print(auth);
  }

  ThemeType get themeMode => _themeMode;

  // set logged(bool value) {
  //   _logged = value;
  //   notifyListeners();
  // }

  // bool get logged => _logged;
}
