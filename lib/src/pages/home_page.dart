import 'package:flutter/material.dart';

//no podemos manipular el conteo por declararlo con final por usar StatelessWidget
//porque el conteo podía cambiar
class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 35);

  final conteo = 0;

  @override
  //método para dibujar el widget
  Widget build(BuildContext context) {
    //El Scaffold es el encargado de utilizar toda la pantalla
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        //Column nos permite definir children, dentro podemos ponemos poner
        //todos los widgets necesarios.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de taps',
              style: estiloTexto,
            ),
            Text(
              //Podemos utilizar la interpolacion de string para transformar
              //nuestra variable entera usando $
              '$conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
