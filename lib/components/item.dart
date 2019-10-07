import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import '../ordermodel.dart';
import 'button.dart';

class Item extends StatefulWidget {
  Item({@required this.title});

  final title;
  // GestureTapCallback onpressed;
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var qty = 0;

  void increment(createlist) {
    createlist.addOne(widget.title);
    this.setState(() {
      qty = qty + 1;
    });
  }

  void decrement(createlist) {
    if (qty - 1 <= 0) {
      createlist.removeAll(widget.title);
    }
    createlist.removeOne(widget.title);
    this.setState(() {
      qty = max(0, qty - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final OrderModel createlist = Provider.of<OrderModel>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width * 0.95,
//      color: Colors.white30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFf5f5f5),
            boxShadow: [
              new BoxShadow(
                color: Colors.black38,
                blurRadius: 6,
                offset: new Offset(0.0, 3.0),
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
              SmallButton(onPressed: () => decrement(createlist), text: "n"),
              Text(qty.toString()),
              SmallButton(onPressed: () => increment(createlist), text: "p"),
            ],
          ),
        ),
      ),
    );
  }
}
