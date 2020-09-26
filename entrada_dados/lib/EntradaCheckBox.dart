import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("Subtitle teste"),
              //activeColor: Colors.deepOrange,
              //secondary: Icon(Icons.add_box),
              //selected: false,
              value: _comidaBrasileira,
              onChanged: (bool valor) {
                setState(() {
                  this._comidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Subtitle teste"),
              //activeColor: Colors.deepOrange,
              //secondary: Icon(Icons.add_box),
              //selected: false,
              value: _comidaMexicana,
              onChanged: (bool valor) {
                setState(() {
                  this._comidaMexicana = valor;
                });
              },
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Comida Brasileira: " + _comidaBrasileira.toString() +
                " Comida Mexicana " + _comidaMexicana.toString());
              },
            )

            /*
            Text("Comida Brasileira"),
            Checkbox(value: _estaSelecionado, onChanged: (bool valor){
              print("CheckBOx " + valor.toString());
                setState(() {
                  this._estaSelecionado = valor;
                });
            })
            */
          ],
        ),
      ),
    );
  }
}
