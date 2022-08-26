import 'package:flutter/material.dart';
import 'package:mylez/slide_to_widget.dart';

import 'package:mylez/time_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: const SlideToWidgetX(),
    );
  }
}
