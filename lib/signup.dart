import 'package:canteen/components/button.dart';
import 'package:flutter/material.dart';
import 'package:canteen/theme/color.dart';
import 'components/inputfield.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
        body: Padding(
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
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                children: <Widget>[
                  CTextField(controller: null, htext: "Name"),
                  CTextField(controller: null, htext: "Email"),
                  CPasswordField(controller: null, htext: "Password"),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Sign Up"),
                  ArrowButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/selectorder"),
                  ),
                ],
              ),
              Spacer(),
              FlatButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/login"),
                child: Text("Sign in"),
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

    Path path2 = Path();
    Paint paint2 = Paint();
    path2.lineTo(0, height);
    path2.lineTo(width * 0.4, height);
    path2.quadraticBezierTo(
        width * 0.45, height * 0.85, width * 0.7, height * 0.8);
    path2.quadraticBezierTo(width * 0.9, height * 0.75, width, height * 0.7);
    path2.lineTo(width, height * 0.7);
    path2.lineTo(width, 0);
    path2.close();
    paint2.color = cblue;

    canvas.drawPath(path2, paint2);

    path.lineTo(0, height * 0.5);
    path.quadraticBezierTo(
        width * 0.2, height * 0.35, width * 0.5, height * 0.35);
    path.quadraticBezierTo(width * 0.9, height * 0.35, width, height * 0.3);
    path.lineTo(width, height * 0.3);
    path.lineTo(width, 0);
    path.close();
    paint.color = cblack;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
