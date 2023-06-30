import 'package:flutter/material.dart';

class IteamsDetails extends StatelessWidget {
  const IteamsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 140.h,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/images.jpeg",
              height: 100.0,
              width: 200.0,
              fit: BoxFit.cover,
              //color: Colors.transparent,
              
              
            ),
          ),
          // ),
          const SizedBox(height: 8,),
          const Text(
           
               "Levi's ",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xff272728)
              ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
             
            ),
            
            const Text('T-shirt smart',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff6E6E70),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            )
        ],
      ),
    );
  }
}