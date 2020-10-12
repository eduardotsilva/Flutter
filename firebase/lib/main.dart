import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseAuth auth = FirebaseAuth.instance;

  String email = "eduardo.tsilva@hotmail.com";
  String senha = "123456";
  String senhaErrada = '123';


  //Processo de SingIn (LogIn)
  auth.signInWithEmailAndPassword(
      email: email,
      password: senha
  ).then((value) => {
      print("usuário logou email: " + value.email)
  }).catchError((onError){
      print("usuário erro: " + onError.toString());
  });


  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





//***** COLINHA KKK



//Firestore.instance
//    .collection("usuarios")
//  .document("nascimento")
//  .setData({"edu": "1990", "pai": "1968", "mae": "1970"});

//INSTANTE
//Firestore db = Firestore.instance;
//  INSERT
//  db.collection("usuarios").document("002").setData({
//    "nome":"Cirlene",
//    "idade":"51"
//  });

//    UPDATE SÓ MANDAR NO MESMO DOCUMENTO
//  db.collection("usuarios").document("002").setData({
//    "nome":"Cirlene Anastácio Solis",
//    "idade":"51"
//  });

//db.collection("usuarios").document("002").delete();

//  Recupera um documento especifico
//  DocumentSnapshot snapshot = await db.collection("usuarios").document("001").get();
//  print("dados : " + snapshot.data.toString());


//retornando todos os dados da collection "usuarios"
//   QuerySnapshot querySnapshot = await db.collection("usuarios").getDocuments();
//   for(DocumentSnapshot item in querySnapshot.documents){
//     var dados = item.data;
//     print("Toda coleçãode usuario ->  Nome: " + item["nome"] + '  todos os dados -> ' + dados.toString());
//   }


//buscar lista de dados sempre que houver mudança no banco de dados
//usamos o Listen (adiciona um ouvinte, o fire base notifica)
//  db.collection("usuarios").snapshots().listen((event) {
//
//    for (DocumentSnapshot item in event.documents) {
//      var dados = item.data;
//      print("Toda coleçãode usuario ->  Nome: " +
//          item["nome"] +
//          '  todos os dados -> ' +
//          dados.toString());
//    }
//  });



//CRIACAO DE USUÁRIO
//  auth.createUserWithEmailAndPassword(email: email, password: senha)
//      .then((fireBaseUser) => {
//        print("novo usuário: sucesso!! email: " + fireBaseUser.email)
//      }).catchError((erro){
//        print("novo usuário erro: " + erro.toString());
//  });


//VERIFICAR SE O USUÁRIO ESTÁ LOGADO
//FirebaseUser usuarioAtual = await auth.currentUser();
//
//if (usuarioAtual != null ) {
////LOGADO
//print("usuário logado email: " + usuarioAtual.email);
//}else {
//print("usuário DESLOGADO");
//}

//DESLOGAR USUARIO
//auth.singOut();


//Processo de SingIn (LogIn)
//auth.signInWithEmailAndPassword(
//email: email,
//password: senha
//).then((value) => {
//print("usuário logou email: " + value.email)
//}).catchError((onError){
//print("usuário erro: " + onError.toString());
//});
