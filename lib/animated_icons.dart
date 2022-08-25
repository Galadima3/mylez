// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedIconsX extends StatefulWidget {
  const AnimatedIconsX({Key? key}) : super(key: key);

  @override
  State<AnimatedIconsX> createState() => _AnimatedIconsXState();
}

class _AnimatedIconsXState extends State<AnimatedIconsX>
    with SingleTickerProviderStateMixin {
  // create the animation Controller
  late AnimationController _animationController;
  // initaliaze the animation controller
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  // method for when user taps Icon
  bool videoPlaying = false;

  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
        videoPlaying == true;
      
       
    } else {
       _animationController.reverse();
        videoPlaying == false;
        
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
            onTap: _iconTapped,
            child: AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: _animationController,
              size: 150,
            ),
          )),
    );
  }
}
