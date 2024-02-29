import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  const AnimatedBox({super.key});

  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> {
  Color _color = Colors.yellow;
  double _hight = 100;
  double _width = 100;
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(


            child: AnimatedContainer(
              height: _hight,
              width: _width,
              decoration: BoxDecoration(
                color: _color.withOpacity(_opacity),
              ),
              duration: Duration(seconds: 3),
            ),
          ),
          InkWell(onTap: () {
            setState(() {
              _hight = 200;
              _width = 500;
              _color = Colors.green;
              _opacity = 0.5;
            });
          }, child: Text("start",style: TextStyle(fontSize: 25),)),
          InkWell(onTap: () {
            setState(() {
               _color = Colors.yellow;
              _hight = 100;
              _width = 100;
              _opacity = 1;
            });
          }, child: Text("reset",style: TextStyle(fontSize: 25),)),
        ],
      ),
    );
  }
}
