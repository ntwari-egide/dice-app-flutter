// custom widget
import 'package:app/styled_text.dart';
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

  // defining functions

  void rollDice() {}

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
      child: Center(
        // child: StyledTextContainer("FIFA World Cup 2023"),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png'),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 20, bottom: 20, ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )),
              child: const Text(
                "Roll dice",
              ),
            )
          ],
        ),
      ),
    );
  }
}
