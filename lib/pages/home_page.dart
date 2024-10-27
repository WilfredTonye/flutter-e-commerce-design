// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/bottom_nav_bar.dart';
import 'package:flutter_project_2/constants/index.dart';
import 'package:flutter_project_2/pages/cart_page.dart';
import 'package:flutter_project_2/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int _selectedIndex = 0;

void navigateBottomBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

final List<Widget> _pages = [
  const ShopPage(),
  const CartPage()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index) ,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Icon(Icons.menu),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
              //logo
              child:Image.asset(
              logo,
              height: 240,
              ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Divider(
                  color: Colors.grey.shade800,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    ),
                  title: Text(
                    "H O M E",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                    ),
                  title: Text(
                    "A B O U T",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                ),
              ),
              ],
            ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                    ),
                  title: Text(
                    "L O G O U T",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                ),
              ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}