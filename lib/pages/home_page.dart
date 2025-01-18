import 'package:flutter/material.dart';
import 'package:nike_brand_store/components/bottom_nav_bar.dart';
import 'package:nike_brand_store/pages/cart_page.dart';
import 'package:nike_brand_store/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:
          BottomNavBar(onTabChanged: (index) => navigateBottomNavBar(index)),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {
              Scaffold.of(context).openDrawer(),
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'lib/images/nike.png',
                    width: 200,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[800],
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {
                    navigateBottomNavBar(0);
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.white,
                  ),
                  onTap: () {
                    navigateBottomNavBar(1);
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
