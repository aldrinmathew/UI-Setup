import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';
import '../widget/icon/gamepad_icon.dart';
import '../import/utils.dart';

class UISetupHome extends StatelessWidget {
  const UISetupHome();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
          child: Scaffold(
        backgroundColor: color.main,
        body: Center(
          child: Column(
            children: [
              GamepadIcon(),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Container(
                  width: 100,
                  height: 100,
                  color: color.alternative,
                ),
              ),
              MaterialButton(
                child: Text(
                  'Mode',
                  style: TextStyle(
                    color: color.white,
                  ),
                ),
                color: color.style,
                onPressed: () {
                  color.themeSwitcher(ThemeSwitchMode.change);
                },
              )
            ],
          ),
        ),
      ));
    });
  }
}
