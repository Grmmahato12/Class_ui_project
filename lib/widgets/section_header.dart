import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String ? subTitle;
  final String ? image;
  const SectionHeader({super.key, required this.title, this.subTitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
               if (image!= null)
             Container(
              margin: const EdgeInsets.only(right: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(36),
              child: Image.asset(image!,
              height: 36,
              width: 36,
              fit: BoxFit.cover,
              ),
            ),
          ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "HeyWow",
                color: Color(0xff272728),
                height: 1.6
              ),
              ),
              if(subTitle != null)
              Text(subTitle!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "HeyWow",
                color: Color(0xff272728),
                height: 1.7
              ),
              ),
            ],
          ),
            ],
          ),
          
          const Icon(Icons.forward, color: Color(0xff3E3E40),), 
        ],
      ),
    );
  }
}