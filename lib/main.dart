import 'package:cheat_detection/cheat_detection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CheatDetection',
        home: Scaffold(
            // body: CheatDetection(),
            body: CheatDetection()));
  }
}
