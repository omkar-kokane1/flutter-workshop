import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 2, 14, 247),
          Color.fromARGB(255, 26, 9, 123),
        ),
      ),
    ),
  );
}
