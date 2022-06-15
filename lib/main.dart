import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dice Game Demo',
        home: Scaffold(
            backgroundColor: Colors.green,
            appBar: AppBar(
              title: const Text('Dice Game'),
              backgroundColor: Colors.greenAccent,
            ),
            body: Center(
                child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            {
                              leftDiceNumber = Random().nextInt(6) + 1;
                            }
                          });
                        },
                        child: Image.asset('images/dice$leftDiceNumber.png'))),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            rightDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset('images/dice$rightDiceNumber.png'))),
              ],
            ))));
  }
}
