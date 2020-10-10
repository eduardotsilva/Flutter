import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usuarioLogin = TextEditingController();
  TextEditingController _usuarioSenha = TextEditingController();
  String _mensagemErro = "";
  final _formKey = GlobalKey<FormState>();

  acessarGRP() {
    print("Clicou acessar!!!" + _usuarioLogin.text);

    if (_usuarioLogin.text == null ||
        _usuarioLogin.text == "" ||
        _usuarioSenha.text == null ||
        _usuarioSenha.text == "") {
      print("Clicou USUARIO INVALIDO !!!" + _usuarioLogin.text);
      setState(() {
        _mensagemErro = 'Usuário ou Senha inválidos!';
      });
    } else {
      Navigator.pushNamed(context, "/Home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "imagens/abaconew.png",
                            height: 190,
                            width: 250,
                          )
                        ],
                      ),
                      Container(
                        width: 400,
                        height: 350,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "ACESSO",
                              style: TextStyle(fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 300,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Informe o usuário!';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration:
                                        InputDecoration(labelText: "Usuário"),
                                    style: TextStyle(fontSize: 15),
                                    controller: _usuarioLogin,
                                    autofocus: true,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 300,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Informe a senha!';
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration:
                                        InputDecoration(labelText: "Senha"),
                                    style: TextStyle(fontSize: 15),
                                    controller: _usuarioSenha,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      print("ON TAP");
                                      if (_formKey.currentState.validate()) {
                                        acessarGRP();
                                      }
                                    },
                                    child: Text(
                                      "Acessar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  margin: EdgeInsets.all(20),
                                  padding: EdgeInsets.only(top: 10),
                                  height: 40,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
