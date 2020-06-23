import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: TransferList(),
    appBar: AppBar(title: Text('Transfers'),),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),
  ),
));


class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(Transfer(100, '1000')),
        TransferItem(Transfer(200, '0001')),
        TransferItem(Transfer(300, '1001')),
      ],
    );
  }
}
class TransferItem extends StatelessWidget {
  final Transfer _tranfer;

  TransferItem(this._tranfer);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(this._tranfer.transferValue.toString()),
            subtitle: Text(this._tranfer.accountNumber)
        )
    );
  }
}

class Transfer {
  final double transferValue;
  final String accountNumber;

  Transfer(this.transferValue, this.accountNumber);

}
