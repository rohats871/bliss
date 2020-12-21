import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class upgradeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.0,
        width: 450.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.auto_awesome,
              color: Colors.lightBlueAccent,
              size: 30.0,
            ),
            Text(
              '      Get More Gems? \n Keep Filling Your Map',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.plus,
                size: 30.0,
                color: Colors.tealAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
