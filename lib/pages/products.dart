import 'package:flutter/material.dart';
import 'dart:async';

import '../product_card.dart';
import '../utils/drawer.dart';
import '../product_control.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<dynamic, dynamic>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          title: Text('AppList'),
        ),
        body: Column(
          children: [
            ProductControl(addProduct),
            Expanded(
              child: ProductCard(products, deleteProduct: deleteProduct),
            ),
          ],
        ),
      ),
    );
  }
}
