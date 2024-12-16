import 'package:custom_theme_sample/constants/app_global.dart';
import 'package:custom_theme_sample/screens/home_screen.dart';
import 'package:custom_theme_sample/theme_manager/theme_config.dart';
import 'package:custom_theme_sample/theme_manager/theme_mode_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  AppGlobal.themeManager = ThemeModeManager(prefs);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: AppGlobal.themeManager.themeMode,
        builder: (context, themeMode, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            navigatorKey: AppGlobal.navigatorKey,
            theme: ThemeConfig.lightTheme,
            darkTheme: ThemeConfig.darkTheme,
            themeMode: themeMode,
            home: const HomeScreen(),
          );
        });
  }
}
