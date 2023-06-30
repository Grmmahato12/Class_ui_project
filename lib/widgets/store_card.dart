import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String image;
  final String brandImage;
  final String brand;
  final String name; 
  final double height;
  final double widget;
  const StoreCard({super.key, 
  required this.image, 
  required this.brandImage, 
  required this.brand, 
  required this.name,
  this.height =128,
  this.widget=215,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  height: height,
                  width: widget,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(child: Container(
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.15)
                    ],
                    ),
                ),
              )),
              Positioned(
                bottom: 8,
                left: 8,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 4),
                        blurRadius: 4,
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/images.jpeg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 2),
            child: Text(brand,
            style: const TextStyle(
              fontSize: 16,
              letterSpacing: 0.32,
              height: 1.65,
              color: Color(0xff272728)
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            )),
          Text(name,
          style: const TextStyle(
              fontSize: 14,
              letterSpacing: 0.56,
              height: 1.65,
              color: Color(0xff6E6E70)
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}