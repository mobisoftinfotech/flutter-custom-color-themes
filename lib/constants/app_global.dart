import 'package:flutter/material.dart';

import '../theme_manager/theme_mode_manager.dart';

class AppGlobal {
  AppGlobal._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static late final ThemeModeManager themeManager;
}
