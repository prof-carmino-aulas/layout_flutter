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
          ],
        ),
      ),
    );
  }
}
