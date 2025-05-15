// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_app/core/theming/app_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.btnColor,
    this.textColor,
    required this.text,
    this.onPressed,
  });

  final Color? btnColor;
  final Color? textColor;
  final String text;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 40.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: AppStyles.btnStyle),
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          foregroundColor: textColor,
        ),
      ),
    );
  }
}
