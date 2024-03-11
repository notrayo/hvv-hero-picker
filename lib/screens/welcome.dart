import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.purpleAccent,
            Color.fromARGB(54, 107, 92, 115),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text('WELCOME SCREEN')],
            ),
          )),
    );
  }
}
