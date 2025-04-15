import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:currency_converter/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CurrencyConverterMaterialPage    //to run currency project uncomment
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
 class MyCupertinoApp extends StatelessWidget {
   const MyCupertinoApp({super.key});

   @override
   Widget build(BuildContext context) {
     return CupertinoApp(
       home: CurrencyConverterCupertinoPage()
     );
   }
 }
