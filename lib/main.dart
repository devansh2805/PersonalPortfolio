import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/homepage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devansh Shah Portfolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
