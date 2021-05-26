import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




//Mis paquetes
import 'package:widgets/src/pages/home_temp.dart';

import 'package:widgets/src/routes/routes.dart';
import 'package:widgets/src/pages/alert_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: [
        const Locale('en','US'),//English
        const Locale('es','ES'),//Hebrew
      ],
      //home: HomePageTemp(),
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //para cuando no esta controlada esa ruta
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder:(BuildContext context)=>AlertPage()
        );
      },
      
    );
  }
}

