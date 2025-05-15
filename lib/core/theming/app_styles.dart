import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:theme_app/core/theming/app_colors.dart';
import 'package:theme_app/core/theming/app_fonts.dart';

class AppStyles {
  static const TextStyle textStyle = TextStyle(
    color: AppColors.white,
    fontSize: 36,
    fontFamily: AppFonts.bebasNeue,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle greenTextStyle = TextStyle(
    color: AppColors.lightgreen,
    fontSize: 36,
    fontFamily: AppFonts.bebasNeue,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle paragraphText = TextStyle(
    color: AppColors.white,
    fontSize: 15,
    fontFamily: 'SF Pro Text',
  );

  static const TextStyle btnStyle = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontFamily: AppFonts.bebasNeue,
    fontWeight: FontWeight.w400,
  );
}
