// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TimePix extends StatefulWidget {
  const TimePix({Key? key}) : super(key: key);

  @override
  State<TimePix> createState() => _TimePixState();
}

class _TimePixState extends State<TimePix> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 10, minute: 30);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
     ).then((value){
      setState(() {
        _timeOfDay = value!;
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PICK TIME',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
