// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SliderX extends StatefulWidget {
  const SliderX({Key? key}) : super(key: key);

  @override
  State<SliderX> createState() => _SliderXState();
}

class _SliderXState extends State<SliderX> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          _currentValue.toString(),
          style: TextStyle(fontSize: 30),
        ),
        Slider(
          value: _currentValue,
          //min: 1,
          max: 50,
          divisions: 5,
          label: _currentValue.toString(),
          activeColor: Colors.blueAccent,
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        )
      ]),
    );
  }
}
