
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){



  Firestore.instance
  .collection("usuarios")
  .document("pontuacao")
  .setData({
    "carlos":"80",
    "silvana":"340"
  });


  runApp(App());

}



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
