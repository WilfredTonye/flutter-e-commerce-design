// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_project_2/models/cart.dart';
import 'package:flutter_project_2/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeShoeToCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            icon: Icon(Icons.delete), 
            onPressed: removeShoeToCart
            ),
        ),
      ),
    );
  }
}