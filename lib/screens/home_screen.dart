import 'dart:convert';

import 'package:ecommerce_project/models/catalog.dart';
import 'package:ecommerce_project/utils/widgets/drawer.dart';
import 'package:ecommerce_project/utils/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int days = 30;

  final String name = 'Houra';
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85.0,
        title: Text(" Catalog App "),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidgets(
                  item: CatalogModel.items[index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
