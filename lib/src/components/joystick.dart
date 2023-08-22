import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameJoystick extends JoystickComponent {
  GameJoystick()
      : super(
          knob: CircleComponent(
            radius: 30,
            paint: BasicPalette.red.paint(),
          ),
          margin: EdgeInsets.only(
            left: 15.w,
            bottom: 100.h,
          ),
          background: CircleComponent(
            radius: 100,
            paint: BasicPalette.black.withAlpha(100).paint(),
          ),
        );
}
