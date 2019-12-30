import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearContainer(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }


  _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://image.freepik.com/vector-gratis/fondo-destellos-luz-azul-copyspace_1017-20091.jpg'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  _crearContainer() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Imagen 1', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Una descripcion', style: estiloSubtitulo,)
                      ],
                    ),
                  ),
                  Icon( Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ],
              ),
      ),
    );
  }


  _crearAcciones() {


    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _crearIconButton(Icons.call, 'CALL'),
            _crearIconButton(Icons.near_me, 'ROUTE'),
            _crearIconButton(Icons.share, 'SHARE')  
          ],
        ),
      ),
    );
  }

  _crearIconButton(IconData icono, String texto) {
    return Expanded(       
        child: FlatButton(
                onPressed: () {},         
                child: Column(
          children: <Widget>[
            Icon(icono, color: Colors.blue, size: 40.0,),
            SizedBox(width: 10.0,),
            Text(texto, style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),)
          ],
      ),
        ),
    );
  }


  _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text('Officia reprehenderit non nulla voluptate voluptate cupidatat incididunt reprehenderit anim quis quis.',
        textAlign: TextAlign.justify),
      ),
    );
  }
}