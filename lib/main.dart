import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var leftDiceNumber='2';
  var rightDiceNumber='3';
  void changeLeftDiceNumber(){
    Random random= new Random();
    int randomNumber=random.nextInt(6)+1;
    leftDiceNumber=randomNumber.toString();
  }
  void changeRightDiceNumber(){
    Random random= new Random();
    int randomNumber=random.nextInt(6)+1;
    rightDiceNumber=randomNumber.toString();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dice App"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child:
                GestureDetector(
                    onTap: (){
                      setState(() {
                        changeLeftDiceNumber();
                      });
                    },
                    child:
                    Image.asset('assets/dice$leftDiceNumber.png'))),

            SizedBox(
              width: 50,
            ),

            Expanded(
                flex: 1,
                child:
                GestureDetector(
                    onTap: (){
                      setState(() {
                        changeRightDiceNumber();
                      });
                    },
                    child:
                    Image.asset('assets/dice$rightDiceNumber.png'))),
          ],
        ),
      ),
    );
  }
}