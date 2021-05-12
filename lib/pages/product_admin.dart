import 'package:flutter/material.dart';

import 'product_edit.dart';
import 'product_list.dart';
import 'products.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                AppBar(
                  title: Text('Choose'),
                  automaticallyImplyLeading: false,
                ),
                ListTile(
                  title: Text('Products Page'),
                  trailing: Icon(Icons.shopping_cart),
                  onTap: () => Navigator.pushReplacementNamed(context, '/'),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage Products'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Product List'),
                ),
                Tab(
                  child: Text('Product Edit'),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProductList(),
              ProductEdit(),
            ],
          )),
    );
  }
}
