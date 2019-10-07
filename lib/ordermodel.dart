import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'components/item.dart';

class OrderModel extends ChangeNotifier {
  // final List<Item> _items = [];
  final HashMap<String, int> _items = HashMap();
  // UnmodifiableListView get umlw => UnmodifiableListView(_items);
  HashMap get orderlist => _items;
  int get totalprice => gettotal();
  //
  int gettotal() {
    int tot = 0;
    _items.forEach((key, val) => tot += 75 * val);
    return tot;
  }

  void addOne(String item) {
    // _items.putIfAbsent(item,()=> 0);
    _items.update(item, (val) => val + 1, ifAbsent: () => 1);
    notifyListeners();
  }

  void removeOne(String item) {
    // _items.putIfAbsent(item,()=> 0);
    _items.update(item, (val) => val - 1, ifAbsent: () => 1);
    notifyListeners();
  }

  void removeAll(String item) {
    // _items.putIfAbsent(item,()=> 0);
    _items.remove(item);
    notifyListeners();
  }
}
