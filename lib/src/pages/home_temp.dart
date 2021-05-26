import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final opciones=['Uno','Dos','Tres','Cuatro','Cinco'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),

      body: ListView(
        //children:_crearItems()//metodo para hacer tarjetas
        children:_crearItemsCorta(),
      ),
    );
  }
  //metodo para crear una lista de widgets usando una lista
  
  
  
  List<Widget> _crearItems(){
    List<Widget> lista=new List<Widget>();

    for (String opt in opciones) {
      final tempWidget=ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider(thickness: 2.0,));//Esto se llama operador en cascada
    }
    return lista;
  }

  //usar esta mierda
  List<Widget> _crearItemsCorta(){

    return opciones.map((item){

      return Column(
        children: [
          ListTile(
            title: Text('$item!'),
            subtitle: Text("Cualquier cosica"),
            leading: Icon(Icons.wallet_giftcard),//Mete el widget al principio de la tarjeta
            trailing: Icon(Icons.keyboard_arrow_right),//Mete el widget al final de la tarjeta
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}