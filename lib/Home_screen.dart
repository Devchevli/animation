import 'package:flutter/material.dart';

import 'Drag_dropp.dart';
import 'Hero_animation.dart';
import 'animated_Container.dart';
import 'color_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TabBar(
                  tabs: [
                    Text("Tween",style: TextStyle(
                      fontSize: 25,
                    ),),
                    Text("Color",style: TextStyle(
                      fontSize: 25,
                    ),),
                    Text("Hero",style: TextStyle(
                      fontSize: 25,
                    ),),
                  ],
                ),
                TabBarView(children: [
                  Container(color: Colors.green,height: 200,),
                  Container(color: Colors.green,height: 200,),
                  Container(color: Colors.green,height: 200,),

                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
