import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: EightBall(),
      ),
    );

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ball = Random().nextInt(4) + 1;
              print("I got clicked");
            });
          },
          child: Image.asset(
            "images/ball$ball.png",
          ),
        ),
      ),
    );
  }
}
