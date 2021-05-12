import 'package:flutter/material.dart';

import './pages/product.dart';

class ProductCard extends StatelessWidget {
  final List<Map<dynamic, dynamic>> product;
  final Function deleteProduct;

  ProductCard(this.product, {this.deleteProduct});

  Widget _buildProductCard(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Image.asset(product[index]['imageUrl']),
          Text(product[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  color: Theme.of(context).accentColor,
                  icon: Icon(Icons.info),
                  onPressed: () => (Navigator.push(
                          context,
                          MaterialPageRoute<bool>(
                            builder: (context) =>
                                ProductPage('title', 'imageUrl'),
                          )).then((bool value) {
                        if (value) {
                          deleteProduct(index);
                        }
                      }))),
              IconButton(
                color: Colors.red,
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return product.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductCard,
            itemCount: product.length,
          )
        : Center(
            child: Text('No product found'),
          );
  }
}
