// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants/index.dart';
import 'package:flutter_project_2/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  logo,
                  height: 240,
                  ),
              ),
              const SizedBox(height: 48,),
              //into text
              Text(
                "Just do it!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
                const SizedBox(height: 24,),
                Text(
                  "Brand new sneakers and customs kicks made with prenium quality",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48,),
              //button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=> HomePage()
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Shop now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}