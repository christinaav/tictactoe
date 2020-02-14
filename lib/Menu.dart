import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'TicTacToe',
          style: TextStyle(fontSize: 25, fontFamily: 'tahoma'),
        ),
      ),
      body: Container(
        color: Colors.amber[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              UnDraw(
                color: Colors.red,
                illustration: UnDrawIllustration.game_day,
                height: 180,
                width: 150,
              ),
              Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2,

                child: MaterialButton(
                  color: Colors.red,
                  child: Text(
                    'Inizia il gioco',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'myapp');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  elevation: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
