import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class three_bottom_buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 40.0, left: 50.0, right: 50.0, bottom: 0.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            child: RaisedButton(
                child: Icon(
                  FontAwesomeIcons.times,
                  color: Colors.yellow[900],
                ),
                shape: CircleBorder(),
                color: Color(0xFFFFF8DC),
                onPressed: () {
                  print('I was pressed');
                }),
          ),
          Spacer(),
          Container(
            height: 80.0,
            width: 80.0,
            child: RaisedButton(
                child: Icon(
                  FontAwesomeIcons.bolt,
                  color: Colors.deepPurple,
                ),
                shape: CircleBorder(),
                color: Color(0xFFE6E6FA),
                onPressed: () {
                  print('I was pressed');
                }),
          ),
          Spacer(),
          Container(
            height: 60.0,
            width: 60.0,
            child: RaisedButton(
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Color(0xFFFF69B4),
                ),
                shape: CircleBorder(),
                color: Color(0xFFFFC0CB),
                onPressed: () {
                  print('I was pressed');
                }),
          ),
        ],
        // this row is for the buttons
      ),
    );
  }
}
