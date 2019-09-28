import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  CTextField({@required this.controller, @required this.htext});

  final TextEditingController controller;
  final String htext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: htext),
      ),
    );
  }
}

class CPasswordField extends StatelessWidget {
  CPasswordField({@required this.controller, @required this.htext});

  final TextEditingController controller;
  final String htext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: htext),
        obscureText: true,
      ),
    );
  }
}
