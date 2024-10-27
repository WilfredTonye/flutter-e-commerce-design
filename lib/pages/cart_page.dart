import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/cart_item.dart';
import 'package:flutter_project_2/models/cart.dart';
import 'package:flutter_project_2/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //heading
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: const Text(
            "My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            Shoe individuakShoe = value.getUserCart()[index];

            return CartItem(
              shoe: individuakShoe,
            );
          },),
        )
      ],
    ),);
  }
}