import 'package:flutter/material.dart';
import 'package:flutter_test_1/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
 const FoodTile({
    super.key, required this.food,
    required this.onTap,
    });

 @override
 Widget build(BuildContext context) {
   return GestureDetector(
    onTap: onTap,
     child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //image
          Image.asset(
            food.imagePath,
            height: 140,
          ),
     
          // text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
     
          // price + rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Text(
                  '\$' + food.price,
                  style: TextStyle
                  (fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  ),
                ),
     
                // rating
                Icon(
                  Icons.star,
                   color: Colors.yellow[800]
                   ),
                Text(
                  food.rating,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
     
        ],
      ),
     ),
   );
 }
}