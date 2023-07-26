import 'package:flutter/material.dart';

import '../Insidedata/stories.dart';
import '../Insidedata/tab1.dart';
import '../Insidedata/tab2.dart';
import '../Insidedata/tab3.dart';
import '../Insidedata/tab4.dart';

class Useraccount extends StatelessWidget {
  const Useraccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("images/2.jpg")),

                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "250K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "100M",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "245",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Followings",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Name and Bio
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rao Faheem",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text("No one is yours :)"),
                  ),
                  Text(
                    "www.instagram.com/asthetic_rao/",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            // Edit Profiletools
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Edit Profile")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Ad Tools")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Insights")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  storiesinsta(
                    text: 'rao',
                    image: "images/gfg.jpg",

                  ),
                  storiesinsta(
                    text: 'lahore',
                    image: "images/gfg.jpg",

                  ),
                  storiesinsta(
                    text: 'Islamabad',
                    image: "images/gfg.jpg",
                  ),
                  storiesinsta(
                    text: 'Frankfurt',
                    image: "images/gfg.jpg",

                  ),
                  storiesinsta(
                    text: 'Humburg',
                    image: "images/gfg.jpg",

                  ),
                  // storiesinsta(
                  //   text: 'Aust',
                  // ),
                  // storiesinsta(text: 'Story1',),
                  // storiesinsta(text: 'Story1',),
                  // storiesinsta(text: 'Story1',),
                  // storiesinsta(text: 'Story1',),
                ],
              ),
            ),
            //tabs of profile
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.ondemand_video),
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            Expanded(child: TabBarView(children: [
              tab1(),
              tab2(),
              tab3(),
              tab4(),
            ],

            ),),
          ],
        ),
      ),
    );
  }
}
