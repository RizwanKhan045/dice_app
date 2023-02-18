import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Rolling Dice'),
          backgroundColor: Colors.black12,
        ),
        body:
        DicePage()
        ),
      ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 2;
  void onClick(){
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$leftDice.png',
                ),
                onTap: (){
                  setState(() {
                    onClick();
                });
                },),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$rightDice.png',
                ),
                onTap: (){
                  setState(() {
                    onClick();
                  });
                },),
            ),
          ),
        ],),
    );
  }
}