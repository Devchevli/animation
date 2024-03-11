import 'package:flutter/material.dart';

class Hero_Animation extends StatefulWidget {
  const Hero_Animation({super.key});

  @override
  State<Hero_Animation> createState() => _Hero_AnimationState();
}

class _Hero_AnimationState extends State<Hero_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 5),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg"),
                );
              }),
        ],
      ),
    );
  }
}
