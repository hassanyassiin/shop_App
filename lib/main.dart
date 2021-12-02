import 'package:flutter/material.dart';

import '../screens/product_detailed_screen.dart';
import '../screens/products_menu_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(ctx)=>Products(),//value: Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.deepOrange,
          fontFamily: 'Pacifico'
        ),
        home: ProductsMenuScreen(),

        routes: {
          ProductDetailedScreen.routeName:(ctx)=>ProductDetailedScreen(),
        },
      ),
    );
  }
}
