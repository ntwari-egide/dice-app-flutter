import 'package:app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  // main entry point of the flutter app
  runApp(
    const MaterialApp(
    home: Scaffold(
      // backgroundColor: const Color.fromARGB(255, 238, 163, 52),
      body: GradientContainer(
        Color.fromARGB(255, 8, 4, 79),
        Color.fromARGB(255, 5, 16, 117),
      )
      ),
    ),
  );
}