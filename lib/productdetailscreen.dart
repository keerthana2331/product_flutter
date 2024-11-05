
// import 'package:flutter/material.dart';

// class ProductDetailScreen extends StatefulWidget {
//   const ProductDetailScreen({super.key});

//   @override
//   State<ProductDetailScreen> createState() => _ProductDetailScreenState();
// }

// class _ProductDetailScreenState extends State<ProductDetailScreen> {
//   int currentImageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Top Navigation Bar
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey[200],
//                     ),
//                     child: IconButton(
//                       icon: const Icon(Icons.arrow_back),
//                       onPressed: () => Navigator.pop(context),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.grey[200],
//                         ),
//                         child: IconButton(
//                           icon: const Icon(Icons.favorite_border),
//                           onPressed: () {},
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.grey[200],
//                         ),
//                         child: IconButton(
//                           icon: const Icon(Icons.share),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
            
//             // Product Image
//             Expanded(
//               flex: 5,
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Image.asset(
//                   'assets/switch.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
            
//             // Image Indicators
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 4,
//                 (index) => Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 4),
//                   width: 8,
//                   height: 8,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: currentImageIndex == index
//                         ? Colors.black
//                         : Colors.grey[300],
//                   ),
//                 ),
//               ),
//             ),
            
//             // Product Details
//             Expanded(
//               flex: 4,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Nintendo Switch, Gray',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
                    
//                     // Ratings Row
//                     Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 6,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Row(
//                             children: const [
//                               Icon(Icons.star, size: 16, color: Colors.black),
//                               SizedBox(width: 4),
//                               Text(
//                                 '4.8',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(' 117 reviews'),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 6,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Row(
//                             children: const [
//                               Icon(Icons.thumb_up, size: 16, color: Colors.black),
//                               SizedBox(width: 4),
//                               Text('94%'),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 12,
//                             vertical: 6,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Row(
//                             children: const [
//                               Icon(Icons.message, size: 16, color: Colors.black),
//                               SizedBox(width: 4),
//                               Text('8'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
                    
//                     // Price Section
//                     Container(
//                       padding: const EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[100],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 '£169.00',
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 'from £14 per month',
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Icon(Icons.info_outline),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 16),
                    
//                     // Description
//                     const Text(
//                       'The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads.',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         height: 1.5,
//                       ),
//                     ),
//                     const Text(
//                       'Read more',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
                    
//                     // Add to Cart Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFFE5FF00),
//                           foregroundColor: Colors.black,
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         child: const Text(
//                           'Add to cart',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     const Center(
//                       child: Text(
//                         'Delivery on 26 October',
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }