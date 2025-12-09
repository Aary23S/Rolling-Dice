import 'package:flutter/material.dart';
import 'dice_roller.dart';

// import 'text_container.dart';
class GradieantContainer extends StatelessWidget 
{
  const GradieantContainer({super.key});
  
  @override
  Widget build(context)
  {
    return Container
    (
      decoration:const BoxDecoration
      (
        gradient: LinearGradient
        (
          colors: [Colors.deepOrangeAccent,Colors.amberAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        )
      ),
      child: const Center
      (
        child: DiceRoller(),   
      ),
    );

  }

}