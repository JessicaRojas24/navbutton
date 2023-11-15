import 'package:flutter/material.dart';
import 'package:navbutton/pages/pagina_inicio.dart';
import 'package:navbutton/pages/pagina_usuarios.dart';
import 'package:navbutton/pages/pagina_ajustes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

   int _paginaInicial = 0;

    List<Widget> _paginas = [PaginaInicio(), PaginaUsuarios(), PaginaAjustes()];
    
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navegacion inferior'),
        ),
        body:  _paginas[_paginaInicial],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaInicial = index;
            });
          },
          currentIndex: _paginaInicial,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Usuarios",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Ajustes",
            )
          ]),
        ),
      );
  }
}