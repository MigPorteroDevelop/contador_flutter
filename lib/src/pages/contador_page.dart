//Nos habilita todas las funcionalidades y widgets de flutter
import 'package:flutter/material.dart';

//El StatefulWidget se compone de dos clases, el StatefulWidget como tal
//y una clase State que extiende ese StatefulWidget
class ContadorPage extends StatefulWidget {
  //El StatefulWidget necesita de este metodo de crear un estado el cual
  //mediante el _ para definirlo como una clase privada que solo funciona
  //en ese archivo
  @override
  //_ContadorPageState, creamos una nueva instancia de esa clase
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 35);

  int _conteo = 0;

  @override
  //Dibujamos el widget con build
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de taps',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      //Alineamos los widgets
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _refrescar, child: Icon(Icons.refresh)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove)),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _restar() {
    setState(() {
      _conteo--;
    });
  }

  void _refrescar() {
    setState(() {
      _conteo = 0;
    });
  }
}
