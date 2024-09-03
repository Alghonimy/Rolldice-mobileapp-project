import 'package:flutter/material.dart';
import 'package:session2_dice/role_dice.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.amber, Colors.red],
              begin: startAlignment,
              end: endAlignment)),
      child: Center(child: RoleDice()),
    );
  }
}
