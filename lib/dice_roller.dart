// ignore_for_file: unused_element, unused_field, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget 
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> 
{
  
  var _changeNumber = 1;
  // var assetImage="assets/images/dice-six-faces-1.png";
  void rollDice()
  {
    setState(() {
      _changeNumber = Random().nextInt(6)+1;
      // assetImage = "assets/images/dice-six-faces-$_changeNumber.png";
      print("dice has been rolled");
    });
  
  }
  
  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        Image.asset
              (
                "assets/images/dice-six-faces-$_changeNumber.png", 
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 50,),
              TextButton
              (
                onPressed: rollDice, 
                // style: TextButton.styleFrom
                // (
                //   padding: const EdgeInsets.only(top: 50),
                // ),  
                child: const Text("Roll The Dice",style: TextStyle(fontSize: 30),)
              )
      ],
    );
  
  }
}
