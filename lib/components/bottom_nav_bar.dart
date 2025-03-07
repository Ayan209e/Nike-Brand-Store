import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) onTabChanged;
  const BottomNavBar({
    super.key,
    required this.onTabChanged,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => widget.onTabChanged(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            gap: 8,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            gap: 8,
          ),
        ],
      ),
    );
  }
}
