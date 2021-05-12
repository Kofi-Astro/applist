import 'package:applist/pages/product_admin.dart';
import 'package:flutter/material.dart';

import 'pages/auth.dart';
import 'pages/products.dart';
import 'pages/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<dynamic, dynamic>> _products;

  void _addProduct(Map<dynamic, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: AuthPage(),
      routes: {
        '/products': (BuildContext context) =>
            ProductsPage(_products, _addProduct, _deleteProduct),
        '/admin': (BuildContext context) => ProductAdmin()
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElements;
        pathElements = settings.name.split('/');
        if (pathElements[0] != null) {
          return null;
        }
        if (pathElements[1] == 'products') {
          final int index = int.parse(pathElements[2]);
          if (pathElements[2] == index) {
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                _products[index]['title'],
                _products[index]['imageUrl'],
              ),
            );
          }
        }
        return null;
      },
    );
  }
}
