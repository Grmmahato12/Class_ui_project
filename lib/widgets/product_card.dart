import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String ? discountPrice;
  final String originalPrice;
  final Color ? color;
  const ProductCard({super.key, required this.image,  required this.name, this.discountPrice, required this.originalPrice, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: 198,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
          
          
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 2),
            child: Text(name,
            style: const TextStyle(
              fontSize: 16,
              letterSpacing: 0.32,
              height: 1.65,
              color: Color(0xff272728),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            )),
          RichText(
            text: TextSpan(
              text: discountPrice,
              style:  TextStyle(
              fontSize: 16,
              letterSpacing: 0.32,
              height: 1.65,
              color: color,
              decoration: TextDecoration.lineThrough
              
            ),
              children: [
                //WidgetSpan(child: somewidget aapno man le)
                TextSpan(
                  text: "  $originalPrice",
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffDF0707),
                  ),
                  //recognizer: TapGestureRecognizer()..onTap=(){},
                )
              ],
            )
            ),
        ],
      ),
    );
  }
}