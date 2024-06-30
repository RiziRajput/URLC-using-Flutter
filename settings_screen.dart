import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final void Function(bool) updateThemeMode;

  SettingsScreen(this.updateThemeMode);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isBluetoothEnabled = false;
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
              title: Text(
                'Bluetooth',
                style: TextStyle(fontSize: 37),
              ),
              subtitle: Text(
                'Enable Bluetooth communication method',
                style: TextStyle(fontSize: 20),
              ),
              value: _isBluetoothEnabled,
              onChanged: (value) {
                setState(() {
                  _isBluetoothEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(fontSize: 37),
              ),
              subtitle: Text(
                'Enable dark mode theme',
                style: TextStyle(fontSize: 20),
              ),
              value: _isDarkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _isDarkModeEnabled = value;
                  // Call the callback function to update theme mode
                  widget.updateThemeMode(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to provide feedback or contact support
              },
              child: Text('Provide Feedback / Contact Support'),
            ),
          ],
        ),
      ),
    );
  }
}
