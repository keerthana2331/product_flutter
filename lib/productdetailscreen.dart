import 'package:flutter/material.dart';
import 'package:shopping_app/cartscreen.dart';
import 'package:shopping_app/homescreen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.share, color: Colors.black),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 300,
                        child: Image.asset(
                          'assets/switch.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(4, (index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
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
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nintendo Switch, Gray',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial'),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFEBEBEB), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xFF5174C8), size: 16),
                                  SizedBox(width: 4),
                                  Text('4.8',
                                      style: TextStyle(fontFamily: 'Arial')),
                                  SizedBox(width: 4),
                                  Text('117 reviews',
                                      style: TextStyle(
                                          color: Color(0xFF7C7C7C),
                                          fontFamily: 'Arial')),
                                ],
                              ),
                              const SizedBox(width: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFEBEBEB), width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.thumb_up,
                                        color: Color(0xFFD0E44E), size: 16),
                                    SizedBox(width: 4),
                                    Text('94%',
                                        style: TextStyle(fontFamily: 'Arial')),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFEBEBEB), width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.message,
                                        size: 16, color: Colors.black),
                                    SizedBox(width: 4),
                                    Text('8',
                                        style: TextStyle(fontFamily: 'Arial')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                '£169.00',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Arial'),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              width: 120,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFEBEBEB), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                '£14 per month',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Arial'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFEBEBEB), width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(Icons.info,
                                  color: Color(0xFF7C7C7C), size: 16),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads.',
                          style: TextStyle(
                              color: Color(0xFF7C7C7C), fontFamily: 'Arial'),
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB3D423),
                            minimumSize: const Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text('Add to cart',
                              style: TextStyle(fontFamily: 'Arial')),
                        ),
                        const SizedBox(height: 8),
                        const Center(
                          child: Text(
                            'Delivery on 26 October',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Arial'),
                          ),
                        ),
                      ],
                    ),
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
