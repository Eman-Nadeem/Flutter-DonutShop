import 'package:donutshop/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  
  List donutsOnSale = [
    ["Ice Cream Sav", "36", Colors.blue, 'lib/images/icecream_donut.png'],
    ["Strawberry Red", "45", Colors.red, 'lib/images/strawberry_donut.png'],
    ["Choco Don", "85", Colors.brown, 'lib/images/chocolate_donut.png'],
    ["Grape Ape", "65", Colors.purple, 'lib/images/grape_donut.png']
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavour: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      }
    );
  }
}