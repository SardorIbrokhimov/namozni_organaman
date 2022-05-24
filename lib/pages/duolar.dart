import 'package:flutter/material.dart';

class Duolar extends StatefulWidget {
  static const String id = "duolar";

  const Duolar({Key? key}) : super(key: key);

  @override
  State<Duolar> createState() => _DuolarState();
}

class _DuolarState extends State<Duolar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "duolar",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
