import 'package:flutter/material.dart';

class tab4 extends StatelessWidget {
  const tab4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(3.0),
            child: Container(
              color: Colors.teal,
            ),
          );
        });
  }
}
