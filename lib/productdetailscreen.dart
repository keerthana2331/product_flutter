import 'package:flutter/material.dart';
import 'package:shopping_app/cartscreen.dart';
import 'package:shopping_app/homescreen.dart';

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
                    onPressed: () {
                      // Navigate back to HomeScreen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                  ),
                  Row(
                    children: [
                      // Heart icon with red color and white background
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.red),
                          onPressed: () {}, // Handle favorite action
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Upload icon with white background
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.upload, color: Colors.black),
                          onPressed: () {}, // Handle share action
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Full-width Product Image with Dots
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/switch.png', // Path to the image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: index == 0 ? Colors.black : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
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
                  Row(
                    children: [
                      // Box for rating
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.star, color: Colors.blue, size: 16),
                            Text(' 4.8'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Box for thumbs-up percentage
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.thumb_up, color: Colors.green, size: 16),
                            Text(' 94%'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Message icon for "8"
                      Row(
                        children: const [
                          Icon(Icons.message, size: 16),
                          SizedBox(width: 4),
                          Text('8'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Price and Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Row(
                    children: [
                     Text(
                        '£169.00',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                     SizedBox(width: 8),
                       Icon(Icons.info, color: Colors.grey, size: 16), // Info icon for additional info
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
                      // Navigate to CartScreen when the item is added to the cart
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CartScreen()),
                      );
                    },
                    child: const Text('Add to cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 200, 241, 13),
                      minimumSize: const Size(double.infinity, 48),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Text(
                      'Delivery on 26 October',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
