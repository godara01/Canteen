import 'package:flutter/material.dart';
import 'package:canteen/components/button.dart';
import 'package:provider/provider.dart';
import './components/item.dart';
import 'ordermodel.dart';

class SelectOrder extends StatefulWidget {
  @override
  _SelectOrderState createState() => _SelectOrderState();
}

class _SelectOrderState extends State<SelectOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Order"),
      ),
      body: ListView(
        children: <Widget>[
          Item(title: "Parantha"),
          Item(title: "Poha"),
          Item(title: "Shwarma"),
          Item(title: "Tatti"),
          Item(title: "Sunil"),
          Item(title: "Bhuhjji"),
          Item(title: "Abhishek Parantha"),
          Item(title: "Mom's Poha"),
          Item(title: "Dad's Shwarma"),
          Item(title: "Paneer Parantha"),
          Item(title: "Poha Samosa"),
          Item(title: "Samosa"),
          Item(title: "Egg"),
          Item(title: "Rice"),
        ],
      ),
      floatingActionButton: RoundButton(
        onPressed: () => Navigator.pushNamed(context, '/placeorder'),
        text: "Place Order",
      ),
    );
  }
}
