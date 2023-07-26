import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Userpost extends StatefulWidget {
  final String nam;

  Userpost({required this.nam});

  @override
  State<Userpost> createState() => _UserpostState();
}

class _UserpostState extends State<Userpost> {
  bool isPressed = false;

  void SaveButtonState() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  bool pressed = false;

  void LikeButtonState() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "images/rr.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.nam,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined)
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "images/2.jpg",
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 16,
                ),
                IconButton(
                    icon: Icon(
                      pressed ? Icons.favorite:FontAwesomeIcons.heart,
                      // color: Colors.red,
                    ),iconSize: 30,
                    onPressed: LikeButtonState),
                SizedBox(
                  width: 16,
                ),
                Icon(FontAwesomeIcons.comment),
                SizedBox(
                  width: 16,
                ),
                Icon(FontAwesomeIcons.paperPlane),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: Icon(
                       isPressed ? Icons.bookmark: FontAwesomeIcons.bookmark ,
                ),
                onPressed: SaveButtonState,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Liked by  "),
              Text(
                "Rao Faheem  ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and 5685229  "),
              Text(
                "Others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text:
                        'Life is too short and you cant make anyone happe So just forget '
                        'and forgive and live a happy life'),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(26),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Add a comment...",
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(
            "1 Day Ago",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
