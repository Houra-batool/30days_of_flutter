import 'package:ecommerce_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "WELCOME",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "User Name", hintText: "Enter user name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRotues.homeRoute);
                },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
