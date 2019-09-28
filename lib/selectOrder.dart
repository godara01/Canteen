import 'package:flutter/material.dart';
import 'package:canteen/components/button.dart';
import './components/item.dart';

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
          Item(title: "Shwarma"),
          Item(title: "Parantha"),
          Item(title: "Poha"),
          Item(title: "Shwarma"),
          Item(title: "Parantha"),
          Item(title: "Poha"),
          Item(title: "Shwarma"),
          Item(title: "Parantha"),
          Item(title: "Poha"),
          Item(title: "Shwarma"),
          Item(title: "Parantha"),
          Item(title: "Poha"),
          Item(title: "Shwarma"),
          Item(title: "Parantha"),
          Item(title: "Poha"),
        ],
      ),
      floatingActionButton: RoundButton(
        onPressed: () => Navigator.pushReplacementNamed(context, "/login"),
        text: "Place Order",
      ),
    );
  }
}
