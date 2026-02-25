import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExemploScaffold(),
    );
  }
}

class ExemploScaffold extends StatelessWidget {
  const ExemploScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //******************************
      //Topo do aplicativo
      //
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        centerTitle: true,
        title: const Text(
          "APP BAR (Titulo do topo)",
          textAlign: TextAlign.center,
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),

      //*************************
      //corpo do aplicativo
      //
      body: Container(
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
            Card(
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.text_fields),
                      title: Text("Textos"),
                    ),
                    ListTile(leading: Icon(Icons.list), title: Text("Lista")),
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text("Formulário"),
                    ),
                    ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text("Gráficos e layouts"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ************
      // Botão de tradicional de adicionar
      //
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // ****************
      // Botões de navegação
      //
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade300,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
        ],
      ),
    );
  }
}
