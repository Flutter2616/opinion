import 'package:flutter/material.dart';
import 'package:opinion/opinion/dash_screen.dart';
import 'package:opinion/opinion/home_screen.dart';
import 'package:opinion/opinion/last_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home(),
        'dash':(context) => Dash(),
        'last':(context) => Last(),
      },
    ),
  );
}
