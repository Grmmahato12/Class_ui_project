import 'package:flutter/material.dart';
import 'package:ui_project_1/widgets/section_header.dart';

class SectionWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final String ? subTitle;
  final String ? image;
  const SectionWrapper({super.key, required this.title, required this.child, this.subTitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: title, image: image, subTitle: subTitle,),
        const SizedBox(height: 8,),
        child,
      ],
    );
  }
}