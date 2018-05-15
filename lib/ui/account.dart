import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  String message = '';
  int counter = 0;
  changeMessage(){
    this.setState((){
      message="i've changed";
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        color: Colors.green,
        title: 'OK',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Icon(Icons.mms),
          ),
          drawer: new Drawer(
            child: new Column(
              children: <Widget>[
                new DrawerHeader(
                  child: new Text('Oakam'),
                ),
                new MaterialButton(
                  child: new Text('Press me'),
                  onPressed: (){},
                )
              ],
            ),
          ),
          body: new Container(
            child: new Column(
              children: <Widget>[new Text('$message $counter')],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.maximize),
            onPressed: changeMessage,
          ),
        ));
  }
}
