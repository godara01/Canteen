import 'package:canteen/theme/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.onPressed, @required this.text});
  final text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: cblack,
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  ArrowButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(Icons.arrow_forward),
      shape: StadiumBorder(),
      fillColor: cblack,
    );
  }
}

class SmallButton extends StatelessWidget {
  SmallButton({@required this.onPressed, this.text});
  final text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      child: Icon(
        (text == "n") ? Icons.remove : Icons.add,
      ),
      elevation: 8.0,
      shape: CircleBorder(),
      fillColor: corange,
    );
  }
}
