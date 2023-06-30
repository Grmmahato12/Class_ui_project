import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        border: getBorder,
        errorBorder: getBorder,
        enabledBorder: getBorder,
        focusedBorder: getBorder,
        disabledBorder: getBorder,
        focusedErrorBorder: getBorder,
        fillColor: const Color(0xffF3F3F3),
        filled: true,
        hintText: "Search on Tabbor",
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff6E6E70),
        ),
        suffixIcon: const Icon(CupertinoIcons.search, size: 25, color: Color(0xff6E6E70),),
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        
        
        
        ),

    );
  }
  InputBorder get getBorder{
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0x0ff3f3f3),
        width: 1
      )

    );
  }
}