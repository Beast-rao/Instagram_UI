import 'package:flutter/material.dart';

import '../Insidedata/psot.dart';
import '../Insidedata/stories.dart';
class Userhome extends StatelessWidget {
  // const Userhome({Key? key}) : super(key: key);
  final List people=[
    "Rao",
    "hub rao",
    "Zohaib",
    'Ali',
    'Faheem',
    'Arslan',
    'Waseem',
    'Waris',
    'Hamid',
    'Ahad',
    'Usaid',
    'Burger',
    'Moueed',

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),

            Row(
              children: [
                Icon(Icons.add_box_outlined,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.favorite_border,),
                ),
                Icon(Icons.maps_ugc_outlined),
              ],
            ),
          ],
        ),
      ),
      body:
          Column(
            children: [
              Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return storiesinsta(text: people[index],image: "images/rr.jpg",);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(

                  itemCount: people.length,
                    itemBuilder: (context,index){
                  return Userpost(nam: people[index]);
                }),
              )
            ],
          ),

    );
  }
}
