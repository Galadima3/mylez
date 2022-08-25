// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:mylez/constants.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  final _textController = TextEditingController();
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            //display text

            //text input
            children: [
              Expanded(
                child: Container(
                 
                  child: Center(child: Text(userPost, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),),
                  ),
                ),
              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    hintText: 'Talk your mind...',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )),
              ),

              //post button
              MaterialButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    setState(() {
                      userPost = _textController.text;
                    });
                  },
                  child: Text(
                    'Post',
                    style: kButtonTextStyle
                  )),
            ]),
      ),
    );
  }
}
