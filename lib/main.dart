import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/likes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'cart.dart'; // Pastikan file cart.dart sudah diimport

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPages = 0;

  List<Widget> pages = [
    Home(),
    Likes(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Marketplace'),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: IndexedStack(
            index: currentPages,
            children: pages,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(.1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              duration: Duration(milliseconds: 800),
              tabBackgroundColor: Colors.grey.shade800,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.account_box,
                  text: 'Account',
                ),
              ],
              selectedIndex: currentPages,
              onTabChange: (index) {
                setState(() {
                  currentPages = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
