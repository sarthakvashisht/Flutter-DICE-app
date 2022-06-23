// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 2, 2),
      appBar: AppBar(
        centerTitle: true,
        title: (Text('DICEEEEE')),
        backgroundColor: Color.fromRGBO(255, 9, 0, 1),
      ),
      body: dicepage(),
    ),
  ));
}

class dicepage extends StatefulWidget {
  const dicepage({Key? key}) : super(key: key);

  @override
  State<dicepage> createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  int ldicenumber = 1;
  int rdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ldicenumber = Random().nextInt(6) + 1;
                  rdicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$ldicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rdicenumber = Random().nextInt(6) + 1;
                  ldicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
