import 'package:flutter/material.dart';
import 'package:donutshop/utils/burger_tile.dart';
// ignore: must_be_immutable
class BurgerTab extends StatelessWidget {
  
  List burgers = [
    ["Cheese Burger", "5.99", Colors.yellow, "lib/images/cheese-burger.png"],
    ["Veggie Burger", "9.99", Colors.green, "lib/images/veggie-burger.png"],
    ["HamBurger", "15.99", Colors.orange, "lib/images/hamburger.png"],
    ["BBQ Grilled Burger", "19.99", Colors.red, "lib/images/burger.png"],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgers.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgers[index][0],
          burgerPrice: burgers[index][1],
          burgerColor: burgers[index][2],
          burgerImage: burgers[index][3]
        );
      },
    ); 
  }
}