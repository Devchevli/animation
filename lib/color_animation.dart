import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorDemo extends StatefulWidget {
  const ColorDemo({super.key});

  @override
  State<ColorDemo> createState() => _ColorDemoState();
}

class _ColorDemoState extends State<ColorDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _animation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curve;
  bool isAnimate = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration:const Duration(seconds: 5),
    );

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.linear);



    _animation = ColorTween(begin: Colors.blue, end: Colors.yellow)
        .animate(_curve);
    _sizeAnimation = TweenSequence<double>(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 30, end: 70), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 70, end: 30), weight: 50),
    ]).animate(_curve);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimate = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isAnimate = false;
        });
      }
    });

    // _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(

          animation: _curve,
          builder: (context, child) {
            return IconButton(
              onPressed: () {
                isAnimate
                    ? _animationController.reverse()
                    : _animationController.forward();
              },
              icon: Icon(
                CupertinoIcons.heart_fill,
                size: _sizeAnimation.value,
                color: _animation.value,
              ),
            );
          },
        ),
      ),
    );
  }
}
