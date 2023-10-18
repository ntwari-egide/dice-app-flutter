import 'package:flutter/material.dart';

class StyledTextContainer extends StatelessWidget {
  // adding props
  const StyledTextContainer(this.textContent,{super.key});

  final String textContent;

  @override
  Widget build(context) {
    return  Text(
      textContent,
      style: const TextStyle(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
