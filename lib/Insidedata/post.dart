import 'package:flutter/material.dart';

import 'button.dart';

class Post extends StatelessWidget {
  final String username;
  final String likes;
  final String comments;
  final String share;
  final String discription;
  final user;

  Post(
      {required this.username,
        required this.likes,
        required this.comments,
        required this.share,
        required this.discription,
        required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          user,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("@" + username),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: discription,
                            style: TextStyle(color: Colors.white)),
                        TextSpan(
                            text: " #fyp #flutter ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Button(icon: Icons.favorite, text: likes,),
                  Button(
                    icon: Icons.chat_bubble_outline,
                    text: comments,
                  ),
                  Button(
                    icon: Icons.send,
                    text: share,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
