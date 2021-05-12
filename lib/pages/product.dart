import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        // padding: EdgeInsets.all(1),
        child: Column(
          children: [
            Image.asset(imageUrl),
            Text(title),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text('DELETE'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            )
          ],
        ),
      ),
    );
  }
}
