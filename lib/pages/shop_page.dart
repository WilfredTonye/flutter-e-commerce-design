import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/shoe_tile.dart';
import 'package:flutter_project_2/models/cart.dart';
import 'package:flutter_project_2/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemTocart(shoe);

    //Message
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Successfully added!"),
      content: Text("Check your cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8)
          ),
          child:  const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey
                ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  )
            ],
          ),
        ),
        //content
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Everyone flies...some fly longer than others",
            style: TextStyle(
              color: Colors.grey[600]
            ),
            ),
        ),
        const SizedBox(height: 30,),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            }),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    )
    );
  }
}