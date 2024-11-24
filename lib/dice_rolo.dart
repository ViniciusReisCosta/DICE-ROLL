import 'package:flutter/material.dart';
import 'dart:math';

  final randomizer = Random();

class DiceRolo extends StatefulWidget {
  const DiceRolo({super.key});
  @override
  State<DiceRolo> createState() {
    return _DiceRoloState();
  }
}

class _DiceRoloState extends State<DiceRolo> {
  var currentDiceRolo = 2;

  void rolardados() {
    setState(() {
      currentDiceRolo = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRolo.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: rolardados,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 6),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('role os dados'))
      ],
    );
  }
}
