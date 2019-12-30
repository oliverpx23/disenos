import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Stack(
            children: <Widget>[
              _fondo(),
              _titulos()             
              //_mainContainer()
            ],
          ),
          bottomNavigationBar: _customButtonNav(context)),
    );
  }

  Widget _fondo() {
    final grad = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
          begin: FractionalOffset(0.0, 0.4),
          end: FractionalOffset(0.0, 1.0),
        )));

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
            width: 360.0,
            height: 360.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(236, 98, 188, 1.0),
                    Color.fromRGBO(241, 142, 172, 1.0)
                  ],
                  begin: FractionalOffset(0.0, 0.4),
                  end: FractionalOffset(0.0, 1.0),
                ))));

    return Stack(
      children: <Widget>[
        grad,
        Positioned(
          child: cajaRosa,
          top: -100,
        )
      ],
    );
  }

  Widget _titulos() {
    final tstyle = TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);

    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.0,),
              Text(
                'Titulo Principal',
                style: tstyle,
              ),
              SizedBox(height: 10.0),
              Text(
                  'Subtitulo largo, Clasificacion de estilos de texto, etc etc, entre otras cosas',
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
              _botonesRedondeados(),    
            ],
          ),
        ),
      ),
    );
  }

  _customButtonNav(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), title: Container())
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: <TableRow> [
        TableRow(
          children: [
            _crearBotones(),
            _crearBotones(),
          ]
        ),
        TableRow(
          children: [
            _crearBotones(),
            _crearBotones(),
          ]
        ),
        TableRow(
          children: [
            _crearBotones(),
            _crearBotones(),
          ]
        ),
        TableRow(
          children: [
            _crearBotones(),
            _crearBotones(),
          ]
        ),
      ],
    );
  }

  Widget _crearBotones() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.6),
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.dashboard, color: Colors.white, size: 30.0,),
          ),
          Text('Texto Prueba', style: TextStyle(color: Colors.pinkAccent, fontSize: 22.0),)
        ],
      ),
    );
  }
}
