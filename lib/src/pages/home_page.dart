import 'package:flutter/material.dart';
import 'package:shared_prefs/src/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de Usuario'),
      ),
      drawer: _criarMenu(context),
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

  Drawer _criarMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Nome'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              //onTap: () => Navigator.pushNamed(context, SettingsPage.routeName),
              onTap: () {
                //Elimina a pagina anterior
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }),
        ],
      ),
    );
  }
}
