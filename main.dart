import 'package:bliss/screens/home_screen.dart';
import 'package:bliss/screens/user_screen.dart';
import 'package:bliss/screens/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen().id,
      routes: {
        HomeScreen().id: (context) => HomeScreen(),
        User_Screen().id: (context) => User_Screen(),
        Settings().id: (context) => Settings(),
      },
    );
  }
}
