// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

import 'helpers/dialogs.dart';
//import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: const Color.fromRGBO(170, 25, 0, 0),
          backgroundColor: Colors.deepPurple,

          title: Text("Bienvenido a Flutter"),
        ),
        body: Builder(
          // ignore: avoid_unnecessary_containers
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(15.0), //espacio externo al componente
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.0,
                        offset: Offset(1, 1)) //mueve las sombras
                  ],
                  border: Border.all(
                    color: Colors.grey,
                  )),
              child: Column(
                children: [
                  Text(
                    "Bienvenido a mi App",
                    style: TextStyle(
                        color: Colors.indigo,
                        //backgroundColor: Colors.purple,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900),
                    textDirection: TextDirection.ltr,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Images/cheems.png', height: 200),
                  ),
                  //Image(
                  //image: NetworkImage(
                  //    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  //),

                  Text(
                    "Esta es la app de componentes del curso:)",
                    style: TextStyle(
                        color: Colors.indigo,
                        //backgroundColor: Colors.purple,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                    textDirection: TextDirection.ltr,
                  ),
                  Padding(
                    //padding: EdgeInsets.all(50.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
                    //padding: EdgeInsets.only(top: 40.0, left: 250.0),
                    child: ElevatedButton(
                        onPressed: () => contacto(context),
                        child: Text("Dame Click")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  contacto(BuildContext context) {
    infoDialog(context, "Contacto", "Aqui puedes contactarme");
  }
}
