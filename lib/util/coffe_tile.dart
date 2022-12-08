import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  //const CoffeeTile({super.key});

  final String coffeeImagePath;
  final String coffeeName;
  final String coffePrice;

  CoffeeTile(
      {required this.coffeeImagePath,
      required this.coffePrice,
      required this.coffeeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImagePath)),

            //coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(style: TextStyle(fontSize: 20), coffeeName),
                  Text(
                    style: TextStyle(fontSize: 12.5, color: Colors.grey[400]),
                    'With Almond Milk',
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ),
            //price
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$' + coffePrice),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
