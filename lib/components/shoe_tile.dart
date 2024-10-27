// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(shoe.imagePath),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                shoe.description,
                style: TextStyle(
                  color: Colors.grey.shade600
                ),
                ),
            ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe.name,
                          style:  const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                        Text(
                        '\$' +shoe.price,
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        padding: const EdgeInsets.all(25.0),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15), 
                            bottomRight: Radius.circular(15)
                            )
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}