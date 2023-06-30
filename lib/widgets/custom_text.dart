import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Product on Sale',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff272728),
          ),
          ),
          IconButton(
            //Color(0xff3E3E40),
            onPressed: (){},
           icon: const Icon(Icons.forward, color: Colors.black)),
        ],
      ),
    );
  }
}