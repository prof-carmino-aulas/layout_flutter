//******************************
//Topo do aplicativo
//
import 'package:flutter/material.dart';

class AppBarTopo extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTopo({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade400,
      centerTitle: true,
      title: const Text(
        "APP BAR (Titulo do topo)",
        textAlign: TextAlign.center,
      ),
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.menu),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.more_vert),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
