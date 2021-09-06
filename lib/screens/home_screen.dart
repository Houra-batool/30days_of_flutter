import 'package:ecommerce_project/models/catalog.dart';
import 'package:ecommerce_project/utils/widgets/drawer.dart';
import 'package:ecommerce_project/utils/widgets/item_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int days = 30;
  final String name = 'Houra';

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatalogModel.itmes[0]);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85.0,
        title: Text(" Catalog App "),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidgets(
            item: dummylist[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
