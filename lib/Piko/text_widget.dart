import 'package:flutter/material.dart';

class TextWdigex extends StatelessWidget {
  TextEditingController controller;
  String text;
  bool isTextObscured;

  TextWdigex({Key? key, required this.controller, required this.text, required this.isTextObscured}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller: controller,
          obscureText: isTextObscured,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
    
  }
}