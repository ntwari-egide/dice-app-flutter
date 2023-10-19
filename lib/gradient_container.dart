// custom widget
import 'package:app/dice_roller.dart';
import 'package:flutter/material.dart';

// defininga variables

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // defining the constructor
  // passing props
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color1,
          color2,
        ],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(
        // child: StyledTextContainer("FIFA World Cup 2023"),
        child: DiceRoller(),
      ),
    );
  }
}
