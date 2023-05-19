import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Ask Me Anything'),
          ),
            body: magic8ball(),
          ),
        )
      );

class magic8ball extends StatefulWidget {
  @override
  _magic8ballState createState() => _magic8ballState();

}

class _magic8ballState extends State<magic8ball> {

  int yesball = 1;

  void changeBall(){
    setState(() {
    yesball = Random().nextInt(5)+1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
               changeBall();
              },
              child: Image.asset('images/ball$yesball.png'),

            ),
          )
        ],
      ),
    );
  }
}
