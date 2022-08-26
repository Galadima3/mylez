// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToWidgetX extends StatefulWidget {
  const SlideToWidgetX({Key? key}) : super(key: key);

  @override
  State<SlideToWidgetX> createState() => _SlideToWidgetXState();
}

class _SlideToWidgetXState extends State<SlideToWidgetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SlideAction(
            sliderButtonIcon: Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            borderRadius: 12,
            elevation: 0,
            text: 'Slide to Unlock',
            innerColor: Colors.deepPurple,
            outerColor: Colors.deepPurple.shade200,
            onSubmit: () {
              //do something
            },
          ),
        ),
      ),
    );
  }
}
