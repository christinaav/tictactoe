import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        Icons.autorenew,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
