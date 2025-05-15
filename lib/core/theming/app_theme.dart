// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:theme_app/core/theming/app_colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: const ColorScheme.light(
    background: AppColors.white,
    primary: AppColors.lightpurple,
    secondary: AppColors.lightgreen,
    onPrimary: AppColors.black,
    onBackground: AppColors.black,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightpurple,
    foregroundColor: AppColors.black,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.black),
    bodyMedium: TextStyle(color: AppColors.black),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.black,
  colorScheme: const ColorScheme.dark(
    background: AppColors.black,
    primary: AppColors.darkpurple,
    secondary: AppColors.lightgreen,
    onPrimary: AppColors.white,
    onBackground: AppColors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkpurple,
    foregroundColor: AppColors.white,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.white),
    bodyMedium: TextStyle(color: AppColors.white),
  ),
);
