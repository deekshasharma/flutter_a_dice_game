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
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: const Text('Dice Game'),
              backgroundColor: Colors.red,
            ),
            body: Center(
                child: Row(
                  children: [
                    Expanded(child: Image.asset('images/dice1.png')),
                    Expanded(child: Image.asset('images/dice2.png')),
                  ],
                ))));
  }
}
