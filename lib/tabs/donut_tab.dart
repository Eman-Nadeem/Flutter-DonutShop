import 'package:donutshop/utils/donut_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DonutTab extends StatelessWidget {
  
  List donutsOnSale = [
    ["Ice Cream Sav", "5.00", Colors.blue, 'lib/images/icecream_donut.png'],
    ["Strawberry Red", "2.99", Colors.red, 'lib/images/strawberry_donut.png'],
    ["Choco Don", "7.50", Colors.brown, 'lib/images/chocolate_donut.png'],
    ["Grape Ape", "3.50", Colors.purple, 'lib/images/grape_donut.png'],
    ["Mint Choco", "5.99", Colors.green, 'lib/images/mint_choco.png'],
    ["Mango Yum", "3.99", Colors.yellow, 'lib/images/mango_donut.png'],
  ];

  DonutTab({super.key}); 

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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