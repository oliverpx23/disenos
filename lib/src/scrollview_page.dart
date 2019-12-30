import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[_pagina1(), _pagina2()],
        ),
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[_containerFondo(), _imagenFondo(), _textos()],
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blueAccent,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
              child: Text('Bienvenido', style: TextStyle(fontSize: 22.0, color: Colors.white)),
            ),
            onPressed: () {},
          ),
      ),
    );
  }

  Widget _containerFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {

    final estiloTextos = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0,),
            Text('11', style: estiloTextos),
            Text('Jueves', style: estiloTextos),
            Expanded(
              child: SizedBox(),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 100.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
