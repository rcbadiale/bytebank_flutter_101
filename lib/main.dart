import 'package:flutter/material.dart';

import 'screens/list.dart';

void main() => runApp(const ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ItemsList(),
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.green,
          secondary: Colors.green[800],
        ),
      ),
    );
  }
}
