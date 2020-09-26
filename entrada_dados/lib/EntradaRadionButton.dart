import 'package:flutter/material.dart';

class EntradaRadionButton extends StatefulWidget {
  @override
  _EntradaRadionButtonState createState() => _EntradaRadionButtonState();
}

class _EntradaRadionButtonState extends State<EntradaRadionButton> {
  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Entrada de Dados")),
      body: Container(
        child: Row(
          children: [
            Text("Masculino"),
            Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                print("Escolhi " + _escolhaUsuario);
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                print("Escolhi " + _escolhaUsuario);
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
