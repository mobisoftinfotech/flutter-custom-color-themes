import 'package:custom_theme_sample/constants/app_global.dart';
import 'package:flutter/material.dart';

import '../theme_manager/theme_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedTheme = 'System Default';

  @override
  Widget build(BuildContext context) {
    final theme = ThemeManager.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          color: theme.primary1,
          onPressed: () {},
        ),
        title: Text(
          'Home',
          style: TextStyle(color: theme.primary1),
        ),
        backgroundColor: theme.secondary1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: theme.primary1,
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.palette),
                title: const Text('Change Theme'),
                trailing: DropdownButton<String>(
                  value: selectedTheme,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedTheme = newValue;

                        _handleThemeChange(selectedTheme, context);
                      });
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'System Default',
                      child: Text('System Default'),
                    ),
                    DropdownMenuItem(
                      value: 'Light',
                      child: Text('Light'),
                    ),
                    DropdownMenuItem(
                      value: 'Dark',
                      child: Text('Dark'),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.tertiary1,
                    foregroundColor: theme.secondary1,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: theme.primary1),
                      const SizedBox(width: 8),
                      Text(
                        'LOGOUT',
                        style: TextStyle(color: theme.primary1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleThemeChange(String theme, BuildContext context) {
    final themeValue = theme.toLowerCase();
    AppGlobal.themeManager.setTheme(themeValue);
  }
}
