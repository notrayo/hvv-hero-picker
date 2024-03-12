import 'package:flutter/material.dart';

class FactionButton extends StatelessWidget {
  const FactionButton(
      {super.key, required this.buttonText, required this.onButtonPress});

  final String buttonText;
  final VoidCallback onButtonPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onButtonPress,
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black),
      child: Text(
        buttonText,
        style: const TextStyle(fontWeight: FontWeight.w700),
      ),
      //icon: Icon(Icons.abc),
    );
  }
}
