import 'package:flutter/material.dart';

import '../models/transfer.dart';

class ItemTile extends StatelessWidget {
  const ItemTile(this._transfer, {Key? key}) : super(key: key);

  final Transfer _transfer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.monetization_on,
              size: 32.0,
            ),
          ],
        ),
        title: Text(_transfer.value),
        subtitle: Text(_transfer.account),
      ),
    );
  }
}
