import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hvv_hero_picker/widgets/faction_button.dart';

class LightSideScreen extends StatefulWidget {
  const LightSideScreen({super.key});

  @override
  State<LightSideScreen> createState() => _LightSideScreenState();
}

class _LightSideScreenState extends State<LightSideScreen> {
  //initializing the image string and the hero name string

  late String heroImageString;
  late String heroNameString;

  @override
  void initState() {
    super.initState();

    heroImageString = 'assets/heroes_images/Battlefront_Luke.jpg';
    heroNameString = 'LUKE SKYWALKER';
  }

  void lsHeroPicker() {
    //list the heroes images
    List<String> heroImages = [
      'assets/heroes_images/Battlefront_Luke.jpg',
      'assets/heroes_images/Anakin_Skywalker_Close_up.jpg',
      'assets/heroes_images/Battlefront_Leia.jpg',
      'assets/heroes_images/Beebeeate.jpg',
      'assets/heroes_images/Finn_28Sanna_Nivhede29.jpg',
      'assets/heroes_images/Han-solo-captain.jpg',
      'assets/heroes_images/Lando-calrissian-administrator.jpg',
      'assets/heroes_images/Obi-wan-kenobi-general-kenobi.jpg',
      'assets/heroes_images/Rey_28229.jpg',
      'assets/heroes_images/Thiscarpetshootsback.jpg',
      'assets/heroes_images/Yoda_close_up.jpg'
    ];

    //listing the heroes names
    List<String> heroNames = [
      'LUKE SKYWALKER',
      'ANAKIN SKYWALKER',
      'LEIA ORGANA',
      'BB-8',
      'FINN',
      'HAN SOLO',
      'LANDO CALRISSIAN',
      'OBI-WAN KENOBI',
      'REY',
      'CHEWBACCA',
      'YODA'
    ];

    //initialize random and set the logic for randomizing the images

    var random = Random();
    // var newLSHeroImageString = heroImages[random.nextInt(heroImages.length)];
    var heroImageIndex = random.nextInt(heroImages.length);

    setState(() {
      heroImageString = heroImages[heroImageIndex];
      heroNameString = heroNames[heroImageIndex];
    });
  }

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
              heroImageString,
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              heroNameString,
              style: const TextStyle(color: Colors.yellow, fontSize: 27),
            ),
            const SizedBox(
              height: 40,
            ),
            FactionButton(
                buttonText: 'SWITCH HERO', onButtonPress: lsHeroPicker)
          ],
        )),
      ),
    );
  }
}
