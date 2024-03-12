import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hvv_hero_picker/screens/dark_side_picker.dart';
import 'package:hvv_hero_picker/screens/light_side_picker.dart';
import 'package:hvv_hero_picker/widgets/faction_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 0, 1),
            Color.fromARGB(252, 10, 30, 143),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // welcome screen logo
                SvgPicture.asset(
                  'assets/star-wars-seeklogo.svg',
                  width: 150,
                  height: 150,
                ),
                // const SizedBox(
                //   height: 20,
                // ),

                // welcome text

                const Text(
                  'CHOOSE YOUR FACTION',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 189, 189, 9),
                      fontWeight: FontWeight.w500),
                ),

                // Row where two buttons will be placed

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    FactionButton(
                        buttonText: 'LIGHT SIDE',
                        onButtonPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LightSideScreen(),
                              ));
                        }),
                    const SizedBox(
                      width: 35,
                    ),
                    FactionButton(
                        buttonText: 'DARK SIDE',
                        onButtonPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DarkSideScreen(),
                              ));
                        }),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
