// lib/providers/cart_provider.dart
import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  // सामान कार्ट में जोड़ने के लिए
  void addToCart(Product product) {
    _items.add(product);
    notifyListeners(); // ऐप को पता चल जाएगा कि सामान जुड़ गया है
  }

  // सामान कार्ट से हटाने के लिए
  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  // कुल कीमत जोड़ने के लिए
  double get totalAmount {
    return _items.fold(0.0, (sum, item) => sum + item.price);
  }

  // कार्ट खाली करने के लिए
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
