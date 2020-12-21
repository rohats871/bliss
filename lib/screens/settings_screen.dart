import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  String id = 'settings_screen';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
