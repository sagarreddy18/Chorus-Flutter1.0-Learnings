import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColour;
  const ItemCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColour
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding:EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColour,
    ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text(title,
            style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 5),
          Text('\₹${price.toString()}',
          style:Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 5),
          Center(child: Image.asset(image,height: 175,)),
        ],
      ),
    );
  }
}
