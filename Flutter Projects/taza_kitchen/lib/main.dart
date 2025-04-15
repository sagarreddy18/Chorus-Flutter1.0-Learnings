import 'package:taza_kitchen/providers/cart_provider.dart';
import 'package:taza_kitchen/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

//Provider
//ChanageNotifyProvider
//FutureProvider
//StreamProvider

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider() ,
      child: MaterialApp(
        title: 'Taza Kitchen',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1),
            primary: Color.fromRGBO(254, 206, 1, 1),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black
            )
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          textTheme: TextTheme(
            titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),
            bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
            titleLarge: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          useMaterial3: true,
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
