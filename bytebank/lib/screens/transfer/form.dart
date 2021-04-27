import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _titleAppBar = 'Create transfer';
const _valueFieldAccount = {'title': 'Account to', 'tip': '0000'};
const _valueFieldAmmount = {'title': 'Ammount', 'tip': '0.00'};
const _buttonText = 'Confirm';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormTransfer();
  }
}

class FormTransfer extends State<TransferForm> {
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerAmmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_titleAppBar)),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextEditor(
                  controllerI: _controllerAccountNumber,
                  title: _valueFieldAccount['title'],
                  tip:  _valueFieldAccount['tip'],),
              TextEditor(
                  controllerI: _controllerAmmount,
                  title: _valueFieldAmmount['title'],
                  tip:  _valueFieldAmmount['tip'],
                  icon: Icons.monetization_on),
              ElevatedButton(
                  onPressed: () => _createTransfer(context),
                  child: Text(_buttonText))
            ],
          ),
        ));
  }

  void _createTransfer(BuildContext context) {
    final int accountNumber = int.tryParse(_controllerAccountNumber.text);
    final double ammount = double.tryParse(_controllerAmmount.text);
    if (accountNumber != null && ammount != null) {
      final transferCreated = Transfer(ammount, accountNumber);
      Navigator.pop(context, transferCreated);
    }
  }
}
