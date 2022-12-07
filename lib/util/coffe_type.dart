import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;

  CoffeeType({
    required this.isSelected,
    required this.coffeeType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffeeType,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
