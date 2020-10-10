import 'package:flutter/material.dart';
import 'package:grp_pbh_mobile/Inicio.dart';

import 'AdiantPrestConta.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  double _height = 50;
  double _width = 50;


  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      AdiantPrestConta(),
      AdiantPrestConta()
      //EmAlta(),
      //Inscricao(),
      //Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/abaconew.png",
          width: 150,
          height: 100,
          ),
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print("Minha Conta");
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          //fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Início")),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text("Adiantamentos")),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), title: Text("Prest. Conta")),
            // BottomNavigationBarItem(
            // icon: Icon(Icons.folder), title: Text("Biblioteca"))
          ]),
    );
  }
}
