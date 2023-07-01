import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// import 'enums.dart';

class ProviderData with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  final Brightness _brightness =
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  set themeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
    // print(auth);
  }

  ThemeMode get themeMode => _themeMode;

  Brightness get brightness => _brightness;

  // set logged(bool value) {
  //   _logged = value;
  //   notifyListeners();
  // }

  // bool get logged => _logged;
}
