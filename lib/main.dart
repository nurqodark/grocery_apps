import 'package:flutter/material.dart';
import 'package:grocery_app/view/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Apps',
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}
