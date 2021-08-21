import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int days = 30;
  final String name = 'Houra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85.0,
        title: Text(" Catalog App "),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text("starting ${days} days of flutter by ${name}"),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
