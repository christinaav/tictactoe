import 'package:TicTacToe/model/ScoreBoardValues.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:provider/provider.dart';
import 'Board.dart';
import 'ResetButton.dart';
import 'model/BoardValues.dart';

class App extends StatelessWidget with FlareController {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ScoreBoardValues(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => BoardValues(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'TicTacToe',
            style: TextStyle(fontSize: 25, fontFamily: 'tahoma'),
          ),
          actions: <Widget>[
            ResetButton(),
          ],
        ),
        body: Board(this),
      ),
    );
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) => false;

  @override
  void initialize(FlutterActorArtboard artboard) {}

  @override
  void setViewTransform(Mat2D viewTransform) {}
}
