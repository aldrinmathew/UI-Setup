import 'package:flutter/material.dart';

import '../widget/icon/gamepad_icon.dart';

class UISetupHome extends StatelessWidget {
  const UISetupHome();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: GamepadIcon(),
        ),
      ),
    ));
  }
}
