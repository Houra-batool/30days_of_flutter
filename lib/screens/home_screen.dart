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
      body: (CatalogModel.items.length > 1)
          ? // ListView.builder(
          //  padding: EdgeInsets.all(16.0),
          // itemCount: CatalogModel.items.length,
          // itemBuilder: (context, index) => ItemWidgets(
          //     item: CatalogModel.items[index],
          //   ))

          GridView.builder(
              itemCount: CatalogModel.items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];

                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: GridTile(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Image.network(
                        item.image,
                        height: 50,
                        // fit: BoxFit.contain,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    header: Text(item.name),
                    footer: Text(item.price.toString()),
                  ),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
