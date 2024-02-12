import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // salmon sushi
    Food(
      name: "Salmon Sushi",
      price: "200.00",
      imagePath: "lib/images/Salmon sushi.png",
      rating: "4.9"
      ),

    //tuna sushi
    Food(
      name: "Tuna Sushi",
      price: "100.00",
      imagePath: "lib/images/Tuna Sushi.png",
      rating: "4.5"
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  /// getter methods
   List<Food> get foodMenu => _foodMenu;
   List<Food> get cart => _cart;

   // add to cart
   void addToCart(Food foodItem, int quantity){
    for (int i=0; i < quantity; i++){
      _cart.add(foodItem);
    }
    notifyListeners();
   }

   // remove from cart
   void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
   }
}
