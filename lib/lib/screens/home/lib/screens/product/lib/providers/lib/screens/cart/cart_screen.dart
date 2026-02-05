// lib/screens/cart/cart_screen.dart
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[900],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2, // अभी के लिए डमी काउंट
              itemBuilder: (ctx, i) => Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.phone_android)),
                  title: Text("iPhone 15 Pro"),
                  subtitle: Text("Price: ₹1,29,900"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          
          // नीचे का पेमेंट समरी सेक्शन
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("₹1,29,900", style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // यहाँ से Checkout/Payment पेज पर जाएंगे
                    },
                    child: Text("PROCEED TO CHECKOUT", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
