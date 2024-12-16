import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedTheme = 'System Default';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Theme Selector
            Card(
              child: ListTile(
                leading: const Icon(Icons.palette),
                title: const Text('Change Theme'),
                trailing: DropdownButton<String>(
                  value: selectedTheme,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedTheme = newValue;
                        // Here you can add logic to actually change the theme
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
            
            // Passcode Change Button
            Card(
              child: ListTile(
                leading: const Icon(Icons.password),
                title: const Text('Change Passcode'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  // Handle passcode change
                },
              ),
            ),
            
            const Spacer(),
            
            // Logout Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle logout
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 8),
                      Text('LOGOUT'),
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
} 