import 'package:flutter/material.dart';
import 'package:shopping_app/productdetailscreen.dart';
import 'package:shopping_app/cartscreen.dart'; // Import CartScreen

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
                  const Column(
                    children: [
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

              // Delivery Banner with Feather Logo
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Text('Delivery is 50% cheaper',
                        style: TextStyle(color: Colors.blue)),
                    const Spacer(),
                    Image.asset(
                      'assets/first scre product.topfeather.png', // Feather logo asset
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Categories Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('See all', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),

              // Category Icons with Image Assets
SizedBox(
  height: 100,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      _buildCategoryItem('Phones', 'assets/icon.phone.png'),
      _buildCategoryItem('Consoles', 'assets/console.png'),
      _buildCategoryItem('Laptops', 'assets/laptop.png'),
      _buildCategoryItem('Cameras', 'assets/camera.png'),
      _buildCategoryItem('Audio', 'assets/audio.png'), // Ensure 'audio.png' exists in 'assets' folder
    ],
  ),
),
              const SizedBox(height: 16),

              // Flash Sale Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
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
                  Text('See all', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),

              // Flash Sale Items
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProductDetailScreen()),
                        );
                      },
                      child: _buildFlashSaleItem(
                        'Apple iPhone 15 Pro',
                        '£699.00',
                        '£739.00',
                        'assets/iphone.png', // Add image asset
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildFlashSaleItem(
                      'Samsung Galaxy Buds Pro',
                      '£69.00',
                      '£85.00',
                      'assets/galaxy_buds.png', // Add image asset
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
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Catalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.lime,
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
              break;
            case 3:
              break;
            case 4:
              break;
          }
        },
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imagePath) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildFlashSaleItem(
      String title, String price, String originalPrice, String imagePath) {
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
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
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
