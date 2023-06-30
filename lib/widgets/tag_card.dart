import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TagCard extends StatelessWidget {
  final String image;
  final String title;
  const TagCard({super.key, required this.image, required this.title, });

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipPath(
        clipper:  WaveClipperOne(reverse: true),
        child: Stack(
          children: [
            Container(
              height: 206,
              width: 160,
              color: const Color(0xffD3CEF6),
            ),
            Positioned.fill(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff614FE0).withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                  ),
                  
                ),
              ),
              ),
              Positioned(
                bottom: 12,
                left: 20,
                right: 20,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272728),
                    height: 1.5,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ))
                ),
      
                Positioned(
                  left: 0,
                  right: 0,
                  top: 20,
                  child: Container(
                    height: 20,
                  width: 20,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )
                  ),
          ],
        ),
      ),
    );
  }
}