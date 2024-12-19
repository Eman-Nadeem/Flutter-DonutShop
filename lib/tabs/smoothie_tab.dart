import 'package:donutshop/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  List smoothies = [
    ["Dragon Fruit smoothie", "15.00", Colors.red, "lib/images/dragon-fruit.png"],
    ["Mint smoothie", "6.00", Colors.green, "lib/images/mint-smoothie.png"],
    ["Orange smoothie", "8.00", Colors.orange, "lib/images/orange-smoothie.png"],
    ["Strawberry smoothie", "10.00", Colors.pink, "lib/images/strawberry-smoothie.png"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieName: smoothies[index][0],
          smoothiePrice: smoothies[index][1],
          smoothieColor: smoothies[index][2],
          smoothieImage: smoothies[index][3]
        );
      },
    );   
  }
}