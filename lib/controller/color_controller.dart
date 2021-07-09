import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../import/utils.dart';

// The GetX implementation of Theme/Colour system for the application.
class ColorController extends GetxController {
  // The background colour of the application. This changes depending on the Theme Mode.
  Color get main => (isLightMode) ? (Color(0xFFF4F4F4)) : (Color(0xFF1A172F));

  // The foreground colour or the colour that is always in contrast to the background colour of the application. This also changes depending on the Theme Mode.
  Color get contrast => (isDarkMode) ? (Color(0xFFF4F4F4)) : (Color(0xFF1A172F));

  // The styling colour used to identify important elements in the application. In our case, the `style` colour doesn't change value, but can be used as a varying colour in different modes.
  Color get style => Color(0xFFA463F5);

  // The colour used to make elements standout from those elements that use the styling colour. Or the colour that is used other than the `style` colour.
  Color get alternative => Color(0xFF00A3FF);

  // The default value of the `main` colour. In our case, as we are starting in light mode, it is bright.
  Color get defaultMain => Color(0xFFF4F4F4);

  // The default value of the `contrast` colour. In our case, as we are starting in light mode, it is dark.
  Color get defaultContrast => Color(0xFF1A172F);

  // Used just to group all necessary colours in one single class.
  Color get white => Colors.white;

  // Used just to group all necessary colours in one single class.
  Color get black => Colors.black;

  MaterialColor materialStyle = MaterialColor(
    0xFFA463F5,
    {
      50: Color(0xFFEADFF8),
      100: Color(0xFFE0CBFB),
      200: Color(0xFFC8A3F6),
      300: Color(0xFFB989F4),
      400: Color(0xFFAF77F5),
      500: Color(0xFFA363F5),
      600: Color(0xFF934DED),
      700: Color(0xFF7F35DE),
      800: Color(0xFF6721BF),
      900: Color(0xFF4E0F9C),
    },
  );

  // The most important variable in the Theme System as it determines the colours of various elements.
  RxBool _isDarkMode = false.obs;

  // Tells whether the app is in dark mode.
  bool get isDarkMode => _isDarkMode.value;

  // Tells whether the app is in light mode.
  bool get isLightMode => !(_isDarkMode.value);

  // Switches theme between Dark and Light modes. Also can be customised depending on the value passed to the function.
  void themeSwitcher(ThemeSwitchMode mode) {
    if (mode == ThemeSwitchMode.light) {
      if (isDarkMode) {
        _isDarkMode.value = !_isDarkMode.value;
      }
    } else if (mode == ThemeSwitchMode.dark) {
      if (isLightMode) {
        _isDarkMode.value = !_isDarkMode.value;
      }
    } else {
      _isDarkMode.value = !_isDarkMode.value;
    }
  }

  // A unique implementation that returns a value of any type from the 2 values passed to the function, depending on whether it is light or dark mode.
  T chooser<T>({required T lightMode, required T darkMode}) {
    if (isLightMode) {
      return lightMode;
    } else {
      return darkMode;
    }
  }
}
