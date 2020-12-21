import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<String> images = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Becky_G.jpg/1200px-Becky_G.jpg',
  'https://yt3.ggpht.com/kFxY0pofMJifwhPuIcSWpRT_aICcvUkzNemzlz9Rvxf7RvT5SqVOwP3TWXqK0iEjZShA0JLHDg=s900-c-k-c0x00ffffff-no-rj',
  'https://static.billboard.com/files/media/becky-g-bbmas-3-2019-billboard-1548-compressed.jpg',
  'https://celebritynews.pk/wp-content/uploads/2020/02/Becky-G-Wedding-Photos-3.jpg',
  'https://i.pinimg.com/originals/18/d9/e7/18d9e713be42c24fc0b2ff976a471db8.jpg',
  'https://pbs.twimg.com/media/EoH2WvPVkAEdWEZ.jpg',
  'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/2020-02/Becky-G.jpg?itok=TX64xN6D',
];
List<Widget> cards = List.generate(
  images.length,
  (int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23.0,
            spreadRadius: -13.0,
            color: Colors.black54,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.network(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  },
);

class PhotoContainer extends StatefulWidget {
  @override
  _PhotoContainerState createState() => _PhotoContainerState();
}

class _PhotoContainerState extends State<PhotoContainer> {
  TCardController _controller = TCardController();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TCard(
          cards: cards,
          controller: _controller,
          onForward: (index, info) {
            _index = index;
            print(info.direction);
            setState(() {});
          },
          onBack: (index) {
            _index = index;
            setState(() {});
          },
          onEnd: () {
            print('end');
          },
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50.0,
              width: 60.0,
              child: RaisedButton(
                  child: Icon(
                    FontAwesomeIcons.times,
                    color: Colors.yellow[900],
                  ),
                  shape: CircleBorder(),
                  color: Color(0xFFFFF8DC),
                  onPressed: () {
                    print('Left Swipe');
                    _controller.back();
                  }),
            ),
            Container(
              height: 70.0,
              width: 80.0,
              child: RaisedButton(
                  child: Icon(
                    FontAwesomeIcons.bolt,
                    color: Colors.deepPurple,
                  ),
                  shape: CircleBorder(),
                  color: Color(0xFFE6E6FA),
                  onPressed: () {
                    _controller.reset();
                    print('Reset');
                  }),
            ),
            Container(
              height: 50.0,
              width: 60.0,
              child: RaisedButton(
                  child: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Color(0xFFFF69B4),
                  ),
                  shape: CircleBorder(),
                  color: Color(0xFFFFC0CB),
                  onPressed: () {
                    _controller.forward();
                    print('Right Swiped');
                  }),
            ),
          ],
          // this row is for the buttons
        ),
      ],
    );
  }
}

// class three_bottom_buttons extends StatelessWidget {
//   TCardController _controller = TCardController();
//   int _index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//           top: 40.0, left: 50.0, right: 50.0, bottom: 0.0),
//       child: Row(),
//     );
//   }
// }

// Container(
// height: 450.0,
// width: 450.0,
// child: Image.network(
// "https://images.hdqwalls.com/wallpapers/thumb/becky-g-4k-2020-0d.jpg",
// fit: BoxFit.cover,
// ),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(
// Radius.circular(14.0),
// ),
// border: Border.all(
// color: Colors.white, width: 10.0, style: BorderStyle.solid),
// ),
// // This Container is for Having to user put the images
// );
