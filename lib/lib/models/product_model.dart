// lib/models/product_model.dart
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double oldPrice; // डिस्काउंट दिखाने के लिए
  final String imageUrl;
  final String category;
  final bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.imageUrl,
    required this.category,
    this.isAvailable = true,
  });
}
