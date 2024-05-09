import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de usuario'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideLayout();
          } else {
            return _buildNormalLayout();
          }
        },
      ),
    );
  }

  Widget _buildWideLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            child: Center(
              child: Text(
                'Detalles del perfil',
                style: TextStyle(fontSize: 22,color:Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                ListTile(
                  title: Text('Nombre'),
                  subtitle: Text('Juan Daniel'),
                ),
                ListTile(
                  title: Text('Mail'),
                  subtitle: Text('juan.dani@example.com'),
                ),
                ListTile(
                  title: Text('Telefono'),
                  subtitle: Text('+1234567890'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildNormalLayout() {
    return ListView(
      children: [
        Center(
          child: Text(
            'Detalles del perfil',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: Text('Nombre'),
          subtitle: Text('Juan Daniel'),
        ),
        ListTile(
          title: Text('Mail'),
          subtitle: Text('juan.dani@example.com'),
        ),
        ListTile(
          title: Text('Telefono'),
          subtitle: Text('+1234567890'),
        ),Center(
          child: Text(
            'Gira para ver el cambio',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
