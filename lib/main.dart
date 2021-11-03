import 'package:milakresnapebriani19552011108/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:milakresnapebriani19552011108/main_page.dart';


void main() {
  runApp(MyApp());
 }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      );
    }
}