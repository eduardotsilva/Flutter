import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> with TickerProviderStateMixin {
  AnimationController _controleAnimacao;
  double _altura = 50;
  double _largura = 50;

  @override
  void initState() {
    print("Entrei Init State");

    super.initState();
    _controleAnimacao = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    this._altura = 300;
    this._largura = 200;

    print("Entrei Build ");
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        child: Center(
          child: Image.asset(
            "imagens/Favicon.png",
            fit: BoxFit.cover,
            height: _altura,
            width: _largura,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
