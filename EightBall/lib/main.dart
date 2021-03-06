import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Ballpage(),
  ),
);

class Ballpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {



  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int b=1;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: FlatButton(
          onPressed:(){
               setState(() {
                  b=Random().nextInt(5)+1;
               });
          } ,
          child: Image.asset('images/ball$b.png'),
      ),
    );
  }
}





