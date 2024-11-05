// main.dart
import 'package:flutter/material.dart';
import 'productdetailscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
            debugShowCheckedModeBanner: false,

      home: const ProductDetailScreen(),
    );
  }
}

// models/cart_item.dart
class CartItem {
  final String title;
  final double price;
  final String imagePath;
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}

// providers/cart_provider.dart
class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  double get total => _items.fold(0, (sum, item) => sum + (item.price * item.quantity));
}