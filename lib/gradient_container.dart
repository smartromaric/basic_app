import 'package:basic_app/roll_dice.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/text_style.dart';

const start = Alignment.topLeft;
const end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors, begin: start, end: end)),
        child: const Center(
          child: RollDice(),
        ));
  }
}
