import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';
//import 'package:contador/src/pages/home_page.dart';

//El StatelessWidget no mantiene su estado
//construye el MaterialApp que contiene el home que lanza el ContadorPage
class MyApp extends StatelessWidget {
  //Sobreescribimos el método build
  //context contiene la información del árbol de widgets
  @override
  //el context contiene información relevante al árbol de widgets
  Widget build(context) {
    return MaterialApp(
        //quitar banner
        debugShowCheckedModeBanner: false,
        home: Center(
          //child: HomePage(),
          child: ContadorPage(),
        ));
  }
}
