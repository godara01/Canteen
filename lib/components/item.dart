import 'package:canteen/theme/color.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'button.dart';

class Item extends StatefulWidget {
  Item({@required this.title});

  final title;
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var qty = 0;

  void increment() {
    this.setState(() {
      qty = qty + 1;
    });
  }

  void decrement() {
    this.setState(() {
      qty = max(0, qty - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width * 0.9,
//      color: Colors.white30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFf5f5f5),
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                offset: new Offset(0.0, 10.0),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              Icon(Icons.fastfood),
              Spacer(),
              Text(widget.title),
              Spacer(
                flex: 7,
              ),
              SmallButton(onPressed: decrement, text: "n"),
              Text(qty.toString()),
              SmallButton(onPressed: increment, text: "p"),
            ],
          ),
        ),
      ),
    );
  }
}
