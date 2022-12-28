import 'package:flutter/material.dart';

class CheatDetection extends StatefulWidget {
  const CheatDetection({super.key});

  @override
  State<CheatDetection> createState() => _MyAppState();
}

class _MyAppState extends State<CheatDetection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Center(child: Text("Moin"))));
  }
}
