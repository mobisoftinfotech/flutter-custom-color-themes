import 'package:custom_theme_sample/constants/constants.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primary1,
      scaffoldBackgroundColor: AppColors.secondary1);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.secondary1,
      scaffoldBackgroundColor: AppColors.primary1);
}
