import 'package:flutter/material.dart';
import 'package:uitests/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ui tests',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ScreenHome(),
    );
  }
}

