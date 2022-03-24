import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de Usuario'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Color Secundaria'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nome do Usuario'),
          Divider(),
        ],
      ),
    );
  }
}
