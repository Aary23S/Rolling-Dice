import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget 
{
  const TextContainer(this.textName, {super.key});
  final String textName;

  @override
  Widget build(context)
  {
    return Text
      (
      textName,
      style:const TextStyle(color: Colors.cyan,fontSize: 28)
      );
  }

}