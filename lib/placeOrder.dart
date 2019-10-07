import 'package:canteen/ordermodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/button.dart';

class PlaceOrder extends StatefulWidget {
  // PlaceOrder(this.item);
  // final item;
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  // _PlaceOrderState(item);
  Widget selectedItem(title, qty) {
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
                // blurRadius: 5,
                // offset: new Offset(0.0, 7.0),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              Icon(Icons.fastfood),
              Spacer(),
              Text(title),
              Spacer(
                flex: 6,
              ),
              Text("X $qty"),
              Spacer(),
              Text("75"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Widget total(amt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Spacer(
          flex: 4,
        ),
        Text("Order Total: "),
        Spacer(),
        Text(amt),
        Spacer(),
      ],
    );
  }

  Widget pay(text, color) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: color,
          boxShadow: [
            new BoxShadow(
              color: Colors.black38,
              blurRadius: 8,
              offset: new Offset(0.0, 10.0),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50.0,
        // color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _orderlist = [];
    final OrderModel orderlist = Provider.of<OrderModel>(context);
    print(orderlist.totalprice);
    print(orderlist.orderlist);
    orderlist.orderlist
        .forEach((key, value) => {_orderlist.add(selectedItem(key, value))});
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // selectedItem("Curry"),
              // selectedItem("Sandwich"),
              // selectedItem("Dosa"),
              // selectedItem("Poha"),
              Column(children: _orderlist),
              Divider(
                color: Colors.black,
                height: 30,
                indent: 15.0,
                endIndent: 15.0,
              ),
              total(orderlist.totalprice.toString()),
              pay("Pay with Paytm", Colors.blue[700]),
              pay("Pay with GooglePay", Colors.orange),
              pay("Pay with Cash", Colors.yellow[700]),
            ],
          ),
        ),
      ),
    );
  }
}
