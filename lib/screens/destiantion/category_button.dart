import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;
  final Color? backgroundColor;
  final Function onTap;

  const CategoryButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
