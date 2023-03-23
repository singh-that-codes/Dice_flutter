import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override

  int LeftDie=1, RightDie=5;

  @override
  Widget build(BuildContext context) {
  void gendie(){
    LeftDie=Random().nextInt(6)+1;
    RightDie=Random().nextInt(6)+1;
  }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: ()
                  {
                    setState(() {
                      gendie();
                    }
                    );
                    print('LEFT BUTTON PRESSED');
                  },
                  child: Image.asset('images/dice$LeftDie.png')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: ()
                {
                  setState(() {
                    gendie();
                    }
                  );
                  print('RIGHT BUTTON PRESSED');
                },
                child: Image.asset('images/dice$RightDie.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

