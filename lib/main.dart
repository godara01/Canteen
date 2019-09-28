import 'dart:io';

import 'package:canteen/login.dart';
import 'package:canteen/routes.dart';
import 'package:canteen/signup.dart';
import 'package:flutter/material.dart';
import 'package:canteen/theme/color.dart';
import 'package:canteen/selectOrder.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.light : Brightness.light,
      systemNavigationBarColor: corange,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      initialRoute: "/signup",
      routes: routes,
      home: Signup(),
    );
  }
}
