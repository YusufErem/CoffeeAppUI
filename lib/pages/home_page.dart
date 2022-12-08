// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/coffe_tile.dart';
import 'package:flutter_application_1/util/coffe_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//List of coffee types
  final List coffeeTypes = [
    ['Cappucino', true],
    ['Latte', false],
    ['Turkish', false],
  ];

// user tapped on coffee types

  void coffeeTypeSelected(int index) {
    setState(() {
      // everyone make false
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.person),
              )
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),
        body: Column(
          children: [
            // Find best coffe for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                  style: GoogleFonts.bebasNeue(fontSize: 71),
                  "find the best coffe for you"),
            ),

            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find your coffee...",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //
            //listview coffee types
            Container(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeTypes.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                          isSelected: coffeeTypes[index][1],
                          coffeeType: coffeeTypes[index][0],
                          onTap: (() {
                            coffeeTypeSelected(index);
                          }));
                    })),
            SizedBox(
              height: 20,
            ),

            //search bar
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(
                    coffeeImagePath: 'lib/imagesCoffe/CoffeeLatte.jpg',
                    coffeeName: 'Latte',
                    coffePrice: '4.20',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/imagesCoffe/EspressoCoffee.jpg',
                    coffeeName: 'Espresso',
                    coffePrice: '2.20',
                  ),
                  CoffeeTile(
                    coffeeImagePath: 'lib/imagesCoffe/turkishCoffee.jpg',
                    coffeeName: 'Turkish Coffee',
                    coffePrice: '3.00',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
