import 'package:flutter/material.dart';

import 'package:first_dice_app/dice_roller.dart';

// final eða const í stað fyrir var þvi þetta mun aldrei breytast
// chat gpt explained
//const: Set in stone before you even start. Never, ever changes.
// final: Set once when you’re ready, but you don’t have to know what it is ahead of time.
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

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: DiceRoller()
      )
    );
  }
}





// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors,
//              begin: startAlignment, 
//              end: endAlignment),
//       ),
//       child: const Center(
//         child: TextStyleContainer('Hello world'),
//       ),
//     );
//   }
// // 