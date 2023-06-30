import 'package:flutter/material.dart';

class SectionHeader2 extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final IconData icon;

  const SectionHeader2({
    Key? key,
    required this.title,
    required this.image,
    required this.subTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: ListTile(
        leading: Image.asset(image), // Wrap the image path with Image.asset()
        title: Text(title), // Wrap the title string with Text()
        subtitle: Text(subTitle), // Wrap the subTitle string with Text()
        trailing: Icon(icon), // Replace icon string with an Icon widget
      ),
    );
  }
}
