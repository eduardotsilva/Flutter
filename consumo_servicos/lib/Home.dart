import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _resultado = "Resultado";
  TextEditingController _controllerCEP = TextEditingController();

  _recuperarCep() async {
    String cepDigitado = _controllerCEP.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";
    http.Response response;

    response = await http.get(url);
    //print("resposta status cod: " + response.statusCode.toString());
    //print("resposta body : " + response.body);
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    print(
        "Resposta logradouro ${logradouro} bairro: ${bairro} localidade ${localidade}");

    setState(() {
      _resultado = "${localidade}, ${bairro}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço Web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              controller: _controllerCEP,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Informe o CEP"),
              maxLength: 8,
            ),

            RaisedButton(
              child: Text("Clique Aqui"),
              onPressed: _recuperarCep,
            ),
            Text(_resultado),
          ],
        ),
      ),
    );
  }
}
