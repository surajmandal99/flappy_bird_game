import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final birdY;
  final double birdWidth; // normal double value for width.
  final double birdHeight; // out of 2, 2 being the entire height of the screen

  MyBird(
      {this.birdY,
      required this.birdWidth,
      required this.birdHeight}); //constructor for required
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment(0, birdY),
        child: Image.asset(
          'lib/images/bird.png',
          width: MediaQuery.of(context).size.height * birdWidth / 2,
          height: MediaQuery.of(context).size.height * 3 / 4 * birdHeight / 2,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
