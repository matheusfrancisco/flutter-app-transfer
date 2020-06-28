import 'package:bytebank/screens/transfer/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        accentColor: Colors.blueAccent[600],
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[600],
            textTheme: ButtonTextTheme.primary),
      ),
      home: TransferList(),
    );
  }
}
