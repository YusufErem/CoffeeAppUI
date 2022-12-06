import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          padding: EdgeInsets.all(12),
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
                  child: Image.asset('lib/imagesCoffe/CoffeeLatte.jpg')),

              //coffee name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(style: TextStyle(fontSize: 20), 'LATTE'),
                    Text(
                      style: TextStyle(fontSize: 12.5, color: Colors.grey[400]),
                      'With Almond Milk',
                    ),
                    const SizedBox(
                      height: 4,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
