import 'package:canteen/placeOrder.dart';
import 'package:canteen/signup.dart';
import 'selectOrder.dart';
import 'login.dart';

final routes = {
  "/signup": (context) => Signup(),
  "/login": (context) => Login(),
  "/selectorder": (context) => SelectOrder(),
  // "/placeorder": (context) => PlaceOrder(),
};
