import 'package:ecommerce_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRotues.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "User Name", hintText: "Enter user name"),
                  onChanged: (ValueKey) {
                    name = ValueKey;
                    setState(() {});
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Username ";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Enter Username ";
                      } else if (value.length < 6) {
                        return " Password Lenght at least sholud be 6";
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 40,
                ),

                //ANIMATION
                Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 30 : 15),
                  child: InkWell(
                    onTap: () => moveToHome(context),
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
                      // decoration: BoxDecoration(
                      //  color: Colors.deepPurpleAccent,
                      //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                      //  borderRadius: BorderRadius.circular(changeButton ? 30 : 15)),
                    ),
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
      ),
    );
  }
}
