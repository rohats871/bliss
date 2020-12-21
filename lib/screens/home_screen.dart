import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../all_widgets/upgrade_bar.dart';
import 'package:bliss/all_widgets/photo_container.dart';
import 'package:bliss/all_widgets/bottom_buttons.dart';

class HomeScreen extends StatefulWidget {
  String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    // HomeScreen(),
    // HomePage(),
    // SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB0E0E6),
        title: Center(
          child: Text(
            'Bliss',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 35.0,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFF0E68C),
            icon: Icon(
              Icons.person,
              color: Color(0xFF9370DB),
              size: 24.0,
            ),
            label: 'User',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFFF69B4),
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFFF0E68C),
              size: 24.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF9370DB),
            icon: Icon(
              Icons.settings_rounded,
              color: Color(0xFFFF69B4),
              size: 24.0,
            ),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            // the first row is for the update widget with text and a icon
            upgradeWidget(
                //This widget Is Used to Upgrade The UpgradeBar :)
                ),
            SizedBox(
              height: 10.0,
            ),
            photoContainer(
                // This is the photo Container widget
                ),
            three_bottom_buttons(),
          ],
        ),
      ),
    );
  }
}
