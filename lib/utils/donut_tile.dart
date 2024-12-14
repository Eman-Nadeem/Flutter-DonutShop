import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({super.key, required this.donutFlavour, required this.donutPrice, required this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    )
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$$donutPrice",
                    style: TextStyle(
                      color: donutColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),
                )
              ],
            ),
            //picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 16.0),
              child: Image.asset(
                imageName,
              ),
            ),
            //flavour
            Text(
              donutFlavour,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Dunkins",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12
              )
            ),
            const SizedBox(height: 2,),

            //love icon + add button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
              
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}