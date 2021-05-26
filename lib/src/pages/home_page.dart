

import 'package:flutter/material.dart';



import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icono_string_util.dart';
import 'package:widgets/src/pages/alert_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {

  //print(menuProvider.opciones);

  /*menuProvider.cargarData().then((opciones){

    print('lista');
    print(opciones);
  });*/

  return FutureBuilder(
    future: menuProvider.cargarData(),//hay que llamar el fututre que esperamos
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot){

      print('builder');

      return ListView(//tiene que retornar un widget
        children: _listaItems(snapshot.data, context),
      );

    },

  );

  
}

List<Widget>_listaItems(List<dynamic> data, BuildContext context){

 final List<Widget> opciones=[];
 data.forEach((opt){
   final widgetTemp=ListTile(
     title: Text(opt['texto']),
     leading: getIcon(opt['icon']),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: (){

       Navigator.pushNamed(context, opt['ruta']);//el resto de esta manera esta en el main
      //manera de viajar a otra view sin un string
       /*final route = MaterialPageRoute(
         builder: (context)=> AlertPage() 
       );
       Navigator.push(context, route);*/

     },
   );

   opciones..add(widgetTemp)
           ..add(Divider());
 });

 return opciones;
}