import 'package:flutter/material.dart';

import '../components/item_tile.dart';
import '../models/transfer.dart';
import 'form.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ItemsListState();
  }
}

class ItemsListState extends State<ItemsList> {
  final List<Transfer> _transfers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ItemForm();
            }),
          ).then((newTransfer) {
            setState(() {
              newTransfer != null ? _transfers.add(newTransfer) : null;
            });
          });
        },
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _transfers.length,
        itemBuilder: (context, index) {
          return ItemTile(_transfers[index]);
        },
      ),
    );
  }
}
