import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List <Shoe> shoeShop = [
    Shoe(
      name: "Marvins", 
      description:"Sleek, sophisticated, and effortlessly chic", 
      imagePath: 'assets/img/Marvins&Co.jpg', 
      price: '140'
      ),
      Shoe(
      name: "Mustang", 
      description:"Light, airy, and infused with the essence of summer.", 
      imagePath: 'assets/img/Mustang Shoes.jpg', 
      price: '240'
      ),
      Shoe(
      name: "Marvins", 
      description:"Timeless and rugged, these boots tell a story.", 
      imagePath: 'assets/img/Marvins&Co2.jpg', 
      price: '250'
      ),
      Shoe(
      name: "Vans", 
      description:"Streamlined, modern, and precision-crafted.", 
      imagePath: 'assets/img/Vans.jpg', 
      price: '140'
      ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemTocart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }  
}