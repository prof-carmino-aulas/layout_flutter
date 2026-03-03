import 'package:flutter/material.dart';
import 'package:layout_flutter_refatorado/widgets/app_bar_topo.dart';
import 'package:layout_flutter_refatorado/widgets/barra_navegacao.dart';
import 'package:layout_flutter_refatorado/widgets/body_conteudo.dart';
import 'package:layout_flutter_refatorado/widgets/botao_adicionar.dart';
import 'package:layout_flutter_refatorado/widgets/menu_hamburger.dart';

class ExemploScaffold extends StatelessWidget {
  const ExemploScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTopo(),
      drawer: MenuHamburger(),
      body: BodyConteudo(),
      floatingActionButton: BotaoAdicionar(),
      bottomNavigationBar: BarraNavegacao(),
    );
  }
}
