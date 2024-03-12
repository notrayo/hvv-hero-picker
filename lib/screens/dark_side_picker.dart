import 'package:flutter/material.dart';
import 'package:hvv_hero_picker/widgets/faction_button.dart';

class DarkSideScreen extends StatefulWidget {
  const DarkSideScreen({super.key});

  @override
  State<DarkSideScreen> createState() => _DarkSideScreenState();
}

class _DarkSideScreenState extends State<DarkSideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 1, 1, 37),
          Color.fromARGB(250, 194, 4, 4),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 70),
              const Text(
                'CHOOSE YOUR VILLAIN',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/villains_images/Battlefront_Vader.jpg',
                height: 350,
                width: 350,
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                'DARTH VADER',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 40,
              ),
              FactionButton(buttonText: 'SWITCH VILLAIN', onButtonPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
