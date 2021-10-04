import 'package:flutter/material.dart';
import 'package:testing/screens/home.dart';

void main() => runApp(const MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugDisableShadows,
      title: "Flutter App",
      home: const HomeScreen(),
    );
  }
}
