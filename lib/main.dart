import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePageSt(),
      ),
    ),
  );
}

class DicePageStateful extends StatefulWidget {
  const DicePageStateful({super.key});

  @override
  State<DicePageStateful> createState() => _DicePageStatefulState();
}

class _DicePageStatefulState extends State<DicePageStateful> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


/* class DicePage extends StatelessWidget { } */

class DicePageSt extends StatefulWidget {
  const DicePageSt({super.key});

  @override
  State<DicePageSt> createState() => _DicePageStState();
}

class _DicePageStState extends State<DicePageSt> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1 ;
      rightDiceNumber = Random().nextInt(6) + 1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      changeDiceNumber();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      changeDiceNumber();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png')),
              )),
        ],
      ),
    );
  }
}

