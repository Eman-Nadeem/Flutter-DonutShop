import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieName;
  final String smoothiePrice;
  final smoothieColor;
  final String smoothieImage;

  final double borderRadius=12;

  const SmoothieTile({super.key, required this.smoothieName, required this.smoothiePrice, required this.smoothieColor, required this.smoothieImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //price
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: smoothieColor[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius)
                ),
              ),
              child: Text(
                "\$$smoothiePrice",
                style: TextStyle(
                  color: smoothieColor[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
          ],
        ),
        //smoothie image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 16.0),
          child: Image.asset(
            smoothieImage
          ),
        ),
        //smoothie name
        Text(
          smoothieName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "Smooth-yeees!",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12
          )
        ),
        const SizedBox(height: 2,),
      //heart icon + add icon

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
    );
  }
}