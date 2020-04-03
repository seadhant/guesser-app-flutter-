import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Answer for Everything'),
          backgroundColor: Colors.blueGrey,
        ),
        body: BallPage(),
      ),
    ),
  );
}


class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int no = 1;

  void change(){
    setState(() {
      no = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                change();
              },
              child: Image.asset('images/ball$no.png'),
            ),
          ),
        ],
      ),
    );
  }
}
