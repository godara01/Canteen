import 'package:canteen/components/button.dart';
import 'package:canteen/components/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:canteen/theme/color.dart';

import 'selectOrder.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // GlobalObjectKey _formkey = GlobalObjectKey
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(
                flex: 2,
              ),
              Container(
                width: 250,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    CTextField(
                      controller: null,
                      htext: "Email",
                    ),
                    // SizedBox(),
                    CPasswordField(
                      controller: null,
                      htext: "Password",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Sign In"),
                        ArrowButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectOrder()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("Sign Up"), Text("Forgot Password")],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    Paint paint = Paint();
    Path path0 = Path();
    Paint paint0 = Paint();
    path0.lineTo(0, height);
    path0.lineTo(width, height);
    path0.lineTo(width, 0);
    path0.close();
    paint0.color = Colors.white;
    canvas.drawPath(path0, paint0);

    path.quadraticBezierTo(width * 0.6, height * 0.45, width, height * 0.5);
    path.lineTo(width, height * 0.5);
    path.lineTo(width, 0);
    path.close();
    paint.color = cblue;
    canvas.drawPath(path, paint);

    Path path2 = Path();
    Paint paint2 = Paint();
    path2.lineTo(0, height * 0.35);
    path2.quadraticBezierTo(
        width * 0.5, height * 0.5, width * 0.6, height * 0.3);
    path2.quadraticBezierTo(width * 0.7, height * 0.15, width, height * 0.25);

    path2.lineTo(width, height * 0.25);
    path2.lineTo(width, 0);
    path2.close();
    paint2.color = cblack;
    canvas.drawPath(path2, paint2);
    Path path3 = Path();
    Paint paint3 = Paint();
    // path.moveTo(0, 0);
    path3.lineTo(0, height * 0.25);
    path3.quadraticBezierTo(
        width * 0.08, height * 0.25, width * 0.2, height * 0.15);
    path3.quadraticBezierTo(
        width * 0.3, height * 0.07, width * 0.5, height * 0.06);
    path3.quadraticBezierTo(width * 0.7, height * 0.05, width * 0.8, 0);
    path3.lineTo(width * 0.8, 0);
    path3.close();
    paint3.color = corange;
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
