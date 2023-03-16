// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.alphaBlend(
        Colors.grey,
        Colors.red,
      ),
      appBar: AppBar(
        title: Text('Kto dzisiaj zmywa?'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Image(
              image: AssetImage('images/zmyw.jpg'),
              width: 300,
            ),
            Text('Sprawdź!'),
            ElevatedButton(
              child: Text('Klik'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();
    return Scaffold(
      appBar: AppBar(
        title: Text('Kto dzisiaj zmywa?'),
        backgroundColor: result == true ? Colors.green : Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            if (result == true) Text('Dominik'),
            Image(
              image: AssetImage('images/dm.jpg'),
              width: 100,
            ),
            if (result == false) Text('Kasia'),
            Image(
              image: AssetImage('images/kd.jpg'),
              width: 100,
            ),
            ElevatedButton(
                child: Text('Spróbuj ponownie'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }
}
