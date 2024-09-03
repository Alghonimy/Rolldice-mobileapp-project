import 'dart:math';
import 'package:flutter/material.dart';

class RoleDice extends StatefulWidget {
  @override
  State<RoleDice> createState() {
    return _RoleDiceState();
  }
}

class _RoleDiceState extends State<RoleDice> {
  var activeRollDiceNumber = 1;
  var activeRollDice;

  @override
  void initState() {
    super.initState();
    rollDice();
  }

  void rollDice() {
    setState(() {
      activeRollDiceNumber = Random().nextInt(6) + 1;
      activeRollDice = "assets/images/dice-$activeRollDiceNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeRollDice,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 251, 240, 240)),
            ))
      ],
    );
  }
}
