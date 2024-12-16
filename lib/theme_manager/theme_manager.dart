import 'package:custom_theme_sample/constants/app_global.dart';
import 'package:flutter/material.dart';
import 'package:custom_theme_sample/constants/constants.dart';

abstract class ThemeManager {
  static ThemeManager of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? LightModeTheme() : DarkModeTheme();
  }

  // Primary Colors
  Color get primary1;

  // Secondary Colors
  Color get secondary1;

  // Tertiary Colors
  Color get tertiary1;
}

class LightModeTheme extends ThemeManager {
  // Primary Colors
  @override
  Color primary1 = AppColors.primary1;

  // Secondary Colors
  @override
  Color secondary1 = AppColors.secondary1;

  // Tertiary Colors
  @override
  Color tertiary1 = AppColors.tertiary3(AppGlobal.navigatorKey.currentContext!);
}

class DarkModeTheme extends ThemeManager {
  // Primary Colors
  @override
  Color primary1 = AppColors.secondary1;

  // Secondary Colors
  @override
  Color secondary1 = AppColors.primary1;

  // Tertiary Colors
  @override
  Color tertiary1 = AppColors.tertiary3(AppGlobal.navigatorKey.currentContext!);
}
