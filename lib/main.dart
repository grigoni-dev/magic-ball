import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "THIS IS A MAGIC BALL!",
            style: TextStyle(
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () => setState(() => {ballNumber = getRandomBall()}),
            child: Image.asset('images/ball$ballNumber.png'),
            style: ButtonStyle(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Tap to know the answares",
            style: TextStyle(
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}

int getRandomBall() {
  List<int> options = [1, 2, 3, 4, 5];
  Random rnd = Random();
  return options[rnd.nextInt(options.length)];
}
