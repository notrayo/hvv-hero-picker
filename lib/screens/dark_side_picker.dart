import 'package:flutter/material.dart';

class DarkSideScreen extends StatefulWidget {
  const DarkSideScreen({super.key});

  @override
  State<DarkSideScreen> createState() => _DarkSideScreenState();
}

class _DarkSideScreenState extends State<DarkSideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DARK SIDE'),
      ),
    );
  }
}
