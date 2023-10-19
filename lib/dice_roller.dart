import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _ means that it is private class (only visible inside the class)

class _DiceRollerState extends State<DiceRoller> {

  var rolledNumber = 1;
  var randomizer = Random();

  // defining functions
  // implement changing dice image algorithm
  void rollDice() {
    //setting new state
    setState(() {
      rolledNumber = randomizer.nextInt(5) + 1; // between 1 and 6
    });
  }

  @override
  Widget build( context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Bunco Dice ",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/dice-$rolledNumber.png',),
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
        );
  }
}