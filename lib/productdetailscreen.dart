// product_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:shopping_app/cartscreen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Product Image
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey[100],
                child: const Center(
                  child: Text('Nintendo Switch Image'),
                ),
              ),
            ),

            // Product Details
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nintendo Switch, Gray',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: const [
                      Icon(Icons.star, color: Colors.green, size: 16),
                      Text(' 4.8'),
                      Text(' (117 reviews)'),
                      SizedBox(width: 16),
                      Text('94%'),
                      SizedBox(width: 16),
                      Text('8'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Text(
                        '£169.00',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text('from £14 per month',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()),
                      );
                    },
                    child: const Text('Add to cart'),
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.lime,
                      minimumSize: const Size(double.infinity, 48),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                      child: Text('Delivery on 26 October',
                          style: TextStyle(color: Colors.grey))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
