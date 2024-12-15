import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final burgerColor;
  final String burgerImage;

  final double borderRadius=12;

  const BurgerTile({super.key, required this.burgerName, required this.burgerPrice, required this.burgerColor, required this.burgerImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
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
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    )
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "\$$burgerPrice",
                    style: TextStyle(
                      color: burgerColor[800],
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
                burgerImage,
              ),
            ),
            //flavour
            Text(
              burgerName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Al Baik",
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