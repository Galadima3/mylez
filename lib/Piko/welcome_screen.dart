// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mylez/Piko/text_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 100,
          width: 200,
        ),
        TextWdigex(controller: _textController1, text: 'Email',isTextObscured: false),
        SizedBox(
          height: 20,
        ),
        TextWdigex(controller: _textController2, text: 'Password', isTextObscured: true),
        // TextField(
        //   obscureText: true,
        //   controller: _textController2,
        //   textAlign: TextAlign.center,
        //   decoration: InputDecoration(
        //     hintText: 'Password',
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     isDense: true,
        //     contentPadding: const EdgeInsets.all(20),
        //   ),
        // ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlueAccent,
              minimumSize: const Size.fromHeight(50), // NEW
            ),
            onPressed: () {},
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    ));
  }
}

// ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         primary: Colors.black,
//         minimumSize: const Size.fromHeight(50), // NEW
//       ),
//       onPressed: () {},
//       child: const Text(
//         'Submit',
//         style: TextStyle(fontSize: 24),
//       ),
//     ),

// ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: TextButton(
            
//             onPressed: null,
//             child: Container(
//                 color: Colors.blue,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'LOGIN',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 )),
//           ),
//         ),