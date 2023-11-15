import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color.fromARGB(255, 220, 212, 212),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Cart Page Content'),
      ),
    );
  }
}