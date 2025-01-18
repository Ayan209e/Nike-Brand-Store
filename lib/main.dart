import 'package:flutter/material.dart';
import 'package:nike_brand_store/models/cart.dart';
import 'package:nike_brand_store/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.grey,
          ),
        ),
        home: const IntroPage(),
      ),
    );
  }
}
