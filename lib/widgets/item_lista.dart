import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  final IconData icon;
  final String label;

  const ItemLista({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(icon), title: Text(label));
  }
}
