import 'package:flutter/material.dart';
import 'package:udemy_flutter_01/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
      : firstColor = Colors.deepOrangeAccent,
        secondColor = Colors.deepPurpleAccent;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              firstColor,
              secondColor,
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
