import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hvv_hero_picker/widgets/faction_button.dart';

class DarkSideScreen extends StatefulWidget {
  const DarkSideScreen({super.key});

  @override
  State<DarkSideScreen> createState() => _DarkSideScreenState();
}

class _DarkSideScreenState extends State<DarkSideScreen> {
  late String villainImageString;
  late String villainNameString;

  @override
  void initState() {
    super.initState();

    villainImageString = 'assets/villains_images/Battlefront_Vader.jpg';
    villainNameString = 'DARTH VADER';
  }

  void dsVillainPicker() {
    List<String> villainImages = [
      'assets/villains_images/Angrybeeps.jpg',
      'assets/villains_images/Battlefront_Boba.jpg',
      'assets/villains_images/Battlefront_Palpatine.jpg',
      'assets/villains_images/Battlefront_Vader.jpg',
      'assets/villains_images/Dooku_close_up.jpg',
      'assets/villains_images/General-grievous-shattered-armor.jpg',
      'assets/villains_images/Iden_Versio_Crop.jpg',
      'assets/villains_images/Kylo-ren-masked.jpg',
      'assets/villains_images/Mauldef.jpg',
      'assets/villains_images/Phasma_close_up.jpg',
      'assets/villains_images/SWBFII_DICE_Boost_Card_Bossk_-_Unrelenting_Predator_large.jpg'
    ];

    List<String> villainNames = [
      'BB-9E',
      'BOBA FETT',
      'EMPEROR PALPATINE',
      'DARTH VADER',
      'COUNT DOOKU',
      'GENERAL GRIEVOUS',
      'IDEN VERSIO',
      'KYLO REN',
      'DARTH MAUL',
      'PHASMOMMY',
      'BOSSK'
    ];

    var random = Random();
    var villainRandomizedIndex = random.nextInt(villainImages.length);

    setState(() {
      villainImageString = villainImages[villainRandomizedIndex];
      villainNameString = villainNames[villainRandomizedIndex];
    });
  }

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
                villainImageString,
                height: 350,
                width: 350,
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                villainNameString,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 40,
              ),
              FactionButton(
                  buttonText: 'SWITCH VILLAIN', onButtonPress: dsVillainPicker)
            ],
          ),
        ),
      ),
    );
  }
}
