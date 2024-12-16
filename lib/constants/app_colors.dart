import 'package:flutter/material.dart';

class AppColors {
  static const primary1 = Color(0xFF181823);

  static const secondary1 = Color(0xFFFFFFFF);

  static Color tertiary3(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const Color(0xFF69C0FF)
        : const Color(0xFF0094FF);
  }
}
