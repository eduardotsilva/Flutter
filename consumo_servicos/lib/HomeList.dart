import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List _itens = [];

  void _carregarItens() {
    List _itens = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título: ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição: ${i} Lorem ipsum dolor sit amet.";

      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
              Map<String, dynamic> item = _itens[indice];
              //print("item ${_itens[indice]["titulo"]}"); //exibindo apenas título variavel tipo MAP
              return ListTile(
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text(_itens[indice]["descricao"]),
              );
            }),
      ),
    );
  }
}
