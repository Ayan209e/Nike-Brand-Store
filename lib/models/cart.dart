import 'package:flutter/material.dart';
import 'package:nike_brand_store/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeList = [
    Shoe(
      name: 'Nike G.T. Jump',
      price: '100',
      imagePath: 'lib/images/nike-1.png',
      description: 'Basketball Shoe',
    ),
    Shoe(
      name: 'KD17 EP ASW',
      price: '200',
      imagePath: 'lib/images/nike-2.png',
      description: 'Basketball Shoe',
    ),
    Shoe(
      name: 'NikeCourt Lite 4',
      price: '100',
      imagePath: 'lib/images/nike-3.png',
      description: "Men's Tennis Shoe",
    ),
    Shoe(
      name: 'Nike Interact Run',
      price: '100',
      imagePath: 'lib/images/nike-4.png',
      description: "Men's Running Shoe",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeList;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
