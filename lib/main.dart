// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 235, 227),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              child: Image(
                image: AssetImage('assets/image-product-mobile.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                color: Colors.white,
                width: 1000,
                height: 4,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "perfume".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 5,
                              height: 3,
                              color: Color.fromARGB(255, 108, 114, 137)),
                        ),
                        Text(
                          "Gabrielle Essence Eau De Parfum",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            height: 1.1,
                            fontSize: 32,
                            fontFamily: 'Fraunces',
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "A floral, solar and voluptuous interpretation composed by Olivier Polge, Perfumer-Creator for the House of CHANEL.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 108, 114, 137),
                            height: 1.3,
                            fontSize: 17,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            wordSpacing: 1,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "#149.99",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Fraunces',
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 82, 173, 140),
                                    letterSpacing: 1,
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "#169.99",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 17,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 25),
                        TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 173, 140),
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 90)),
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ))
                      ]),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
