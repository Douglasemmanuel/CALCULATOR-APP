import 'package:flutter/material.dart';
import 'Calculator.dart'; // 👈 import your Calculator screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CalculatorHomePage(), // 👈 use your calculator inside a scaffold
    );
  }
}

class CalculatorHomePage extends StatelessWidget {
  const CalculatorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CalculatorApp(), // 👈 This is your full calculator screen
    );
  }
}

