import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset('images/dice1.png'))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset('images/dice2.png'))),
              ],
            ))));
  }
}
