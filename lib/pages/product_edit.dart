import 'package:flutter/material.dart';

class ProductEdit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductEditState();
  }
}

class _ProductEditState extends State<ProductEdit> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Product Name',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Product Description',
          ),
          maxLines: 6,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Product Price',
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Save'),
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }
}
