import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
          ],
        ),
    );
  }
            
  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color:Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui es el subtitulo de la tarjeta y lo unico que quiero es entretenerte para que veas lo bien que me comporto con textos largos'),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: (){},
                ),
                TextButton(
                  child: Text('Ok'),
                  onPressed: (){},
                )
              ],
              )
          
        ],
      ),
    );
  }

  _cardTipo2() {
    final card= Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://cdn.hovia.com/app/uploads/Red-Illustrated-Landscape-Sunset-Wallpaper-Mural-plain.jpg'),
            placeholder: AssetImage('assert/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            //asi no se mueve al cambiar la imagen
            height: 300.0,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage('https://cdn.hovia.com/app/uploads/Red-Illustrated-Landscape-Sunset-Wallpaper-Mural-plain.jpg'),
          ),*/

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]

      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

  }
}