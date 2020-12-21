import 'package:bliss/screens/home_screen.dart';
import 'package:flutter/material.dart';

class User_Screen extends StatefulWidget {
  String id = 'user_screen';

  @override
  _User_ScreenState createState() => _User_ScreenState();
}

class _User_ScreenState extends State<User_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}
