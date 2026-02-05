// lib/screens/home/home_page.dart
import 'package:flutter/material.dart';
import '../../models/product_model.dart';

class HomePage extends StatelessWidget {
  // अभी के लिए हम कुछ डमी डेटा (Mobiles) यहाँ डाल रहे हैं
  final List<Product> products = [
    Product(
      id: '1',
      name: 'iPhone 15 Pro',
      description: 'Latest Apple iPhone with Titanium body.',
      price: 129900,
      oldPrice: 134900,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Mobile',
    ),
    Product(
      id: '2',
      name: 'Samsung S24 Ultra',
      description: 'AI powered Samsung flagship.',
      price: 119900,
      oldPrice: 129900,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Mobile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baba Mobile Shop", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // सर्च बार
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Mobiles...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          
          // प्रोडक्ट्स की लिस्ट
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  elevation: 3,
                  child: Column(
                    children: [
                      Image.network(product.imageUrl, height: 120),
                      Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("₹${product.price}", style: TextStyle(color: Colors.green)),
                      ElevatedButton(
                        onPressed: () {}, 
                        child: Text("Add"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
