import 'package:flutter/material.dart';
class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(3.0),
            child: Container(
              color: Colors.greenAccent,
            ),
          );
        });
  }
}