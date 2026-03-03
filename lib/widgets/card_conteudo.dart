import 'package:flutter/material.dart';
import 'package:layout_flutter_refatorado/widgets/item_lista.dart';

class CardConteudo extends StatelessWidget {
  const CardConteudo({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.indigo, width: 2),
      ),
      elevation: 6,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aqui ficam os textos",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ItemLista(icon: Icons.text_fields, label: "Textos"),
            ItemLista(icon: Icons.list, label: "Lista"),
            ItemLista(icon: Icons.edit, label: "Formulário"),
            ItemLista(icon: Icons.dashboard, label: "Gráficos e layouts"),
          ],
        ),
      ),
    );
  }
}
