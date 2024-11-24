import 'package:flutter/material.dart';
import 'package:projeto_perguntas/dice_rolo.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final color1;
  final color2;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRolo(),
      ),
    );
  }
}
