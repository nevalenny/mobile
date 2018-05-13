import 'package:flutter/material.dart';
import 'ui/LoginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueGrey,
        child: new LoginPage());
  }
}
