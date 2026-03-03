//*************************
//corpo do aplicativo
//
import 'package:flutter/material.dart';
import 'package:layout_flutter_refatorado/widgets/card_conteudo.dart';

class BodyConteudo extends StatelessWidget {
  const BodyConteudo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Colors.blue.shade100,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "BODY\nÁrea Principal de Conteúdo",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          CardConteudo(),
        ],
      ),
    );
  }
}
