import 'package:flutter/material.dart';

class drag_Drop extends StatefulWidget {
  const drag_Drop({super.key});

  @override
  State<drag_Drop> createState() => _drag_DropState();
}

class _drag_DropState extends State<drag_Drop> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DragTarget(
              onAccept:
              (data) {
                setState(() {
                  isActive = true;
                });
              },
              builder: (BuildContext context, List<Object?> candidateData,
                  List<dynamic> rejectedData) {
                return isActive ? Container(
                  height: 100,
                  width: 200,
                  color: Colors.red,
                ) : Container(
                height: 100,
                width: 200,
                color: Colors.yellow,);
              },),
            Draggable(
              data: 'red',
              childWhenDragging:  Container(
                height: 100,
                width: 200,
                color: Colors.black,
              ),child:Container(
              height: 100,
              width: 200,
              color: Colors.green,
            ) ,
              feedback: Container(
                height: 100,
                width: 200,
                color: Colors.green,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
