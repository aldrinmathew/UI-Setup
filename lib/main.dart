import 'package:flutter/material.dart';

import 'global.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(FlutterUISetupApp());
}

class FlutterUISetupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: color.materialStyle,
      ),
      home: UISetupHome(),
    );
  }
}