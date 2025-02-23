import 'package:flutter/material.dart';
import 'model/product.dart'; // Import your Category model or other necessary models

class Backdrop extends StatelessWidget {
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;
  final Category currentCategory; // Assuming you're using Category for category selection

  const Backdrop({
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
    required this.currentCategory,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: frontTitle,
      ),
      body: Stack(
        children: <Widget>[
          backLayer,
          frontLayer,
        ],
      ),
    );
  }
}