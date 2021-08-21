import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "log in screen ",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.lightGreenAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
