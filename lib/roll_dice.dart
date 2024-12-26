import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {
  String numberDice = "1";
  void launcher() {
    setState(() {
      numberDice = (randomizer.nextInt(6) + 1).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$numberDice.png',
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: launcher,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 44, 7, 73),
              textStyle: const TextStyle(fontSize: 20),
              foregroundColor: Colors.white38),
          child: const Text("Roll up Dice")),
    ]);
  }
}
