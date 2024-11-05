import 'package:flutter/material.dart';
import 'package:shopping_app/cartscreen.dart';
import 'package:shopping_app/homescreen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100], // Set the background color for the entire screen
        child: SafeArea(
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () {}, // Handle favorite action
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Upload icon with matching icon style
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.share, color: Colors.black),
                            onPressed: () {}, // Handle share action
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Full-width Product Image with Dots Below
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Larger Image with More Height
                      Container(
                        height: 300, // Adjust this height to make the image bigger
                        child: Image.asset(
                          'assets/switch.png', // Path to the image asset
                          fit: BoxFit.contain,
                        ),
                      ),
                      // Dots positioned below the center of the image
                      Positioned(
                        bottom: -10, // Adjust this value to position dots below the center
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
              ),

              // Curve Divider
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
              ),

              // Product Details with White Background
              Container(
                color: Colors.white,
                child: Padding(
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
                          // Rating box
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.star, color: Colors.blue, size: 16),
                                SizedBox(width: 4),
                                Text('4.8'),
                                SizedBox(width: 4),
                                Text('117 reviews', style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Thumbs-up box
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.thumb_up, color: Colors.green, size: 16),
                                SizedBox(width: 4),
                                Text('94%'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Message count box
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.message, size: 16),
                                SizedBox(width: 4),
                                Text('8'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Price and Description
                      Row(
                        children: [
                          const Text(
                            '£169.00',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 16),
                          // "£14 per month" text inside a light gray box
                          Container(
                            width: 120, // Set a fixed width for better alignment
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              '£14 per month',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const Spacer(),
                          // Info icon in a light gray box
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.info, color: Colors.grey, size: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads.',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 16),

                      // Add to cart button with specified width and style
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to CartScreen when the item is added to the cart
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CartScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 200, 241, 13),
                          minimumSize: const Size(double.infinity, 48), // Full width for "Add to cart"
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                        child: const Text('Add to cart'),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
