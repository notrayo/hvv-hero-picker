import 'package:flutter/material.dart';

class LightSideScreen extends StatefulWidget {
  const LightSideScreen({super.key});

  @override
  State<LightSideScreen> createState() => _LightSideScreenState();
}

class _LightSideScreenState extends State<LightSideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('LIGHT SIDE'),
      ),
    );
  }
}
