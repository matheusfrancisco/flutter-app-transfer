import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextEditor extends StatelessWidget {
  final TextEditingController controllerI;
  final String title;
  final String tip;
  final IconData icon;

  TextEditor({
    this.controllerI,
    this.title,
    this.tip,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controllerI,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            icon: icon != null ? Icon(icon) : null,
            labelText: title,
            hintText: tip),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
