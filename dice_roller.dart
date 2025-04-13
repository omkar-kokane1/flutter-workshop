import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random(); //global variable and created only once

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceROllerState();
  }
}

class _DiceROllerState extends State<DiceRoller> {
  var currentDiceROll = 2;

  void rollDice() {
    setState(() {
      currentDiceROll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDiceROll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), //for spacing between dice and button
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 100,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
