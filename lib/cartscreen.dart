import 'package:flutter/material.dart';
import 'package:shopping_app/productdetailscreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('92 High Street, London'),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select all'),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 16),
                      Icon(Icons.delete),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildCartItem(
                context,
                'Nintendo Switch Lite, Yellow',
                '£109.00',
              ),
              const SizedBox(height: 16),
              _buildCartItem(
                context,
                'The Legend of Zelda: Tears of the Kingdom',
                '£39.00',
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Checkout'),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.lime,
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.lime,
      ),
    );
  }

  Widget _buildCartItem(BuildContext context, String title, String price) {
    return GestureDetector(
      onTap: () {
        NavigationService.navigateToProductDetail(context);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Container(
              width: 60,
              height: 60,
              color: Colors.grey[200],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  const SizedBox(height: 4),
                  Text(price,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {},
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: const Text('1'),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Navigation service (optional, for better navigation management)
class NavigationService {
  static void navigateToProductDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
    );
  }

  static void navigateToCart(BuildContext context) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => const CartScreen()),
    );
  }
}
