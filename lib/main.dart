// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart'; // लॉगिन पेज को जोड़ने के लिए

void main() {
  runApp(BabaMobileApp());
}

class BabaMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baba Mobile Shop',
      debugShowCheckedModeBanner: false,
      
      // लाइट और डार्क मोड की थीम सेटिंग
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system, // सिस्टम के हिसाब से डार्क/लाइट मोड

      // ऐप यहाँ से शुरू होगा (सबसे पहले लॉगिन स्क्रीन दिखेगी)
      home: LoginScreen(), 
    );
  }
}
