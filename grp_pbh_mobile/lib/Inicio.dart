import 'package:flutter/material.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset("imagens/Favicon.png",fit: BoxFit.cover),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
