import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor({
    this.controller,
    this.label,
    this.hint,
    this.icon,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint ?? '',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
