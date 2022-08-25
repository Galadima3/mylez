// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateX extends StatefulWidget {
  const DateX({Key? key}) : super(key: key);

  @override
  State<DateX> createState() => _DateXState();
}

class _DateXState extends State<DateX> {
  //create datetime variable
  DateTime _dateTime = DateTime.now();
  var format = DateFormat.yMd('ng');
  

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2025)).then((value) {
          setState(() {
            _dateTime = value!;
            
            
            
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
            //text widget
            Text(DateFormat.yMMMMd().format(_dateTime).toString(), style: TextStyle(fontSize: 25),),

            //button
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Choose Date',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
