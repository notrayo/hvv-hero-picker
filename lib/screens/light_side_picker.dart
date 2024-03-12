import 'package:flutter/material.dart';
import 'package:hvv_hero_picker/widgets/faction_button.dart';

class LightSideScreen extends StatefulWidget {
  const LightSideScreen({super.key});

  @override
  State<LightSideScreen> createState() => _LightSideScreenState();
}

class _LightSideScreenState extends State<LightSideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 2, 2, 98),
          Color.fromARGB(250, 66, 94, 255),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'CHOOSE YOUR HERO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/heroes_images/Battlefront_Luke.jpg',
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'LUKE SKYWALKER',
              style: TextStyle(color: Colors.yellow, fontSize: 27),
            ),
            const SizedBox(
              height: 40,
            ),
            FactionButton(buttonText: 'SWITCH HERO', onButtonPress: () {})
          ],
        )),
      ),
    );
  }
}
