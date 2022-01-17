import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallPage()),
    ),

  );
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    int ballImage =Random().nextInt(5) + 1;
    return Container(
      child: Center(
        child: Expanded(
          child: TextButton(
              child: Image.asset('images/ball$ballImage.png'),
              onPressed: () {
                setState(() {
                  ballImage =  Random().nextInt(5) + 1;
                });
          },
          ),
        ),
      )
    );
  }
}




