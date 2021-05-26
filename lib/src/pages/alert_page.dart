import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child:ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: ()=> _mostrarAlert(context),
          style:ElevatedButton.styleFrom(
            primary:Colors.red,
            shape:StadiumBorder()//pone bordes redondeados
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add_alarm),
        onPressed: (){
          Navigator.pop(context);//como volver
        },),
    );
  }

  void _mostrarAlert(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,//para cerrar o no la alerta fuera
      builder: (context){
        return AlertDialog(//este es el propio dialog
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size: 100.0,),

            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      }

    );
  }

}