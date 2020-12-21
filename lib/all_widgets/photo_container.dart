import 'package:flutter/material.dart';

class photoContainer extends StatelessWidget {
  const photoContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.0,
      width: 450.0,
      child: Image.network(
        "https://images.hdqwalls.com/wallpapers/thumb/becky-g-4k-2020-0d.jpg",
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(14.0),
        ),
        border: Border.all(
            color: Colors.white, width: 10.0, style: BorderStyle.solid),
      ),
      // This Container is for Having to user put the images
    );
  }
}
