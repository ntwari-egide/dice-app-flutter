// custom widget
import 'package:flutter/material.dart';

// defininga variables

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // defining the constructor
  // passing props
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  var activeImage = 'assets/images/dice-3.png';

  // defining functions
  // implement changing dice image algorithm
  void rollDice() {
    activeImage = 'assets/images/dice-4.png';
    print('changing dice...');
  }

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
            const Text(
              "Bunco Dice",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(activeImage),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 32,
                    top: 20,
                    bottom: 20,
                  ),
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
