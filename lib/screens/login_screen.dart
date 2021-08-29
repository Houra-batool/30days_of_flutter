import 'package:ecommerce_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool changeButton = false;
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
            "WELCOME $name",
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
                onChanged: (ValueKey) {
                  name = ValueKey;
                  setState(() {});
                },
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

              //ANIMATION
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRotues.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changeButton
                      ? 50
                      : 150, // conditional state --->> if ? else :
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 30 : 15)),
                ),
              )
              //  ElevatedButton(
              //    onPressed: () {
              //     Navigator.pushNamed(context, MyRotues.homeRoute);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              // )
            ]),
          )
        ]),
      ),
    );
  }
}
