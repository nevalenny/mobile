import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String username = 'test-user';
  final String password = '';

  void signIn() {
    print('sign-in...');
  }

  void more() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('sign-in'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.send),
            onPressed: signIn,
          ),
          new IconButton(
            icon: new Icon(Icons.more_vert),
            onPressed: more,
          ),
        ],
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new MaterialButton(
            onPressed: singlePress,
            child: new Text('${username.toUpperCase()}'),
            color: Colors.deepOrange,
          ),
          new FlutterLogo(
            size: 100.0,
          )
        ],
      ),
    );
  }

  void singlePress() {
    this.setState(() {
      username = 'why u pressed me! really?';
    });
  }
}
