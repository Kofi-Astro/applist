import 'package:flutter/material.dart';

import '../pages/product_admin.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Choose'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
              title: Text('Manage Products'),
              trailing: Icon(Icons.shopping_cart),
              onTap: () => Navigator.pushReplacementNamed(context, '/admin'))
        ],
      ),
    );
  }
}
