// main.dart
import 'package:flutter/material.dart';
import 'package:shopping_app/cartscreen.dart';
import 'package:shopping_app/productdetailscreen.dart';
import 'homescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        // Set the primary swatch for the app theme
        primarySwatch: Colors.blue,
        // Set the primary color of the app, which will be used in various widgets
        primaryColor: Colors.lime,
        // Set the background color of the scaffold
        scaffoldBackgroundColor: Colors.white,
        // Optional: Set a secondary color
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      ),
            debugShowCheckedModeBanner: false,

      // Set the home screen of the app
      home: const CartScreen(),
    );
  }
}
