import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeManager {
  static const String _themeKey = 'theme_mode';
  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);
  final SharedPreferences _prefs;

  ThemeModeManager(this._prefs) {
    _loadTheme();
  }

  void _loadTheme() {
    final savedTheme = _prefs.getString(_themeKey) ?? 'system';
    themeMode.value = _getThemeMode(savedTheme);
  }

  ThemeMode _getThemeMode(String theme) {
    switch (theme) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }

  Future<void> setTheme(String theme) async {
    await _prefs.setString(_themeKey, theme);
    themeMode.value = _getThemeMode(theme);
  }
}
