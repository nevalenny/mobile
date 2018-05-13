import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.centerLeft,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('username', textDirection: TextDirection.ltr,),
          new Text('password', textDirection: TextDirection.ltr,),
          new RaisedButton(
            child: new Text('sign-in', textDirection: TextDirection.ltr),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
