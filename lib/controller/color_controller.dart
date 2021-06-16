import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';

class ColorController extends GetxController {
  Color get main => (_isDarkMode.value) ? Color(0xFF1A172F) : Color(0xFFF4F4F4);

  Color get contrast => (_isDarkMode.value) ? Color(0xFFF4F4F4) : Color(0xFF1A172F);

  Color get style => Color(0xFFFF9447);

  Color get alternative => Color(0xFFFF6FB4);

  bool get isDarkMode => _isDarkMode.value;

  Color get black => Colors.black;

  Color get white => Colors.white;

  Color get plain => Colors.transparent;

  RxBool _isDarkMode = false.obs;

  T chooser<T>(T lightMode, T darkMode) {
    if(_isDarkMode.value) {
      return darkMode;
    } else {
      return lightMode;
    }
  }

  void themeSwitch(ColorMode mode) {
    if (mode == ColorMode.light) {
      if (_isDarkMode.value) {
        _isDarkMode.value = !_isDarkMode.value;
      }
    } else if (mode == ColorMode.dark) {
      if (!_isDarkMode.value) {
        _isDarkMode.value = !_isDarkMode.value;
      }
    } else {
      _isDarkMode.value = !_isDarkMode.value;
    }
  }
}