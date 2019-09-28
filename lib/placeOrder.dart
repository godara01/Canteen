import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  PlaceOrder(this.item);
  final item;
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  // _PlaceOrderState(item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.item.toString()),
    );
  }
}
