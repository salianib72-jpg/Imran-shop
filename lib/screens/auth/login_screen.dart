// lib/screens/auth/login_screen.dart
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo or Icon
              Center(
                child: Icon(Icons.shopping_bag_outlined, size: 80, color: Colors.blue[900]),
              ),
              SizedBox(height: 30),
              Text(
                "Baba Mobile Shop",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue[900]),
              ),
              Text("Login to continue shopping", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 50),

              // Mobile Field
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  prefixText: "+91 ",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
              SizedBox(height: 25),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    // Logic for OTP will go here later
                    print("OTP Sent to ${_phoneController.text}");
                  },
                  child: Text("SEND OTP", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              
              SizedBox(height: 20),
              Center(
                child: Text("By continuing, you agree to our Terms & Conditions", 
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
