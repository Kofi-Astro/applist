import 'package:flutter/material.dart';

import 'products.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State {
  final formKey = GlobalKey<FormState>();
  bool acceptTerms = false;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Grace.jpg'),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
        )),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'example@gmail.com'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  SwitchListTile(
                    onChanged: (value) => () {},
                    value: acceptTerms,
                    title: Text('Accepts Terms'),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/products'),
                    child: Text('Sign In'),
                    color: Theme.of(context).accentColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
