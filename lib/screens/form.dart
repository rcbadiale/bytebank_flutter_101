import 'package:flutter/material.dart';

import '../components/editor.dart';
import '../models/transfer.dart';

class ItemForm extends StatelessWidget {
  ItemForm({Key? key}) : super(key: key);

  final TextEditingController _controllerAccount = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criando novo item')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controller: _controllerAccount,
              label: 'Número da Conta',
              hint: '10001',
            ),
            Editor(
              controller: _controllerValue,
              label: 'Valor',
              hint: '0.00',
              icon: Icons.monetization_on,
            ),
            ElevatedButton(
              child: const Text('Confirmar'),
              onPressed: () => _createTransfer(context),
            )
          ],
        ),
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    final int? account = int.tryParse(_controllerAccount.text);
    final double? value = double.tryParse(_controllerValue.text);
    if (account != null && value != null) {
      final createdTransfer = Transfer(value, account);
      debugPrint('$createdTransfer');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$createdTransfer'),
        ),
      );
      Navigator.pop(context, createdTransfer);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Valores inválidos!'),
        ),
      );
    }
  }
}
