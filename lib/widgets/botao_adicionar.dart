// ************
// Botão de tradicional de adicionar
//
import 'package:flutter/material.dart';

class BotaoAdicionar extends StatelessWidget {
  const BotaoAdicionar({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
