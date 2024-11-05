
import 'package:flutter/material.dart';
import 'package:shopping_app/productdetailscreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.settings, color: Colors.white),
                  ),
                  Column(
                    children: const [
                      Text('Delivery address',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Text('92 High Street, London',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Icon(Icons.notifications_outlined),
                ],
              ),
              const SizedBox(height: 16),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search the entire shop',
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Delivery Banner
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('Delivery is 50% cheaper',
                    style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(height: 16),

              // Categories Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Categories',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('See all', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),

              // Category Icons
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryItem('Phones', Icons.phone_android),
                    _buildCategoryItem('Consoles', Icons.games),
                    _buildCategoryItem('Laptops', Icons.laptop),
                    _buildCategoryItem('Cameras', Icons.camera_alt),
                  ],
                ),
              ),

              // Flash Sale Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text('Flash Sale',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 8),
                      Text('02:59:23',
                          style: TextStyle(
                              backgroundColor: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Text('See all', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),

              // Flash Sale Items
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to product detail
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductDetailScreen()),
                        );
                      },
                      child: _buildFlashSaleItem(
                        'Apple iPhone 15 Pro',
                        '£699.00',
                        '£739.00',
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildFlashSaleItem(
                      'Samsung Galaxy Buds Pro',
                      '£69.00',
                      '£85.00',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.lime,
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildFlashSaleItem(String title, String price, String originalPrice) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(price,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(width: 8),
              Text(
                originalPrice,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
