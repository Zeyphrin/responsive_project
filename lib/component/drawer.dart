import 'package:flutter/material.dart';

class BreezeDark {
  static const carddark = Colors.blue; // Replace with your color
}

class IconTextButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool isSelected;

  const IconTextButton({
    this.icon,
    required this.text,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Color(0xffFE0078).withOpacity(0.5) : null,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          if (icon != null) Icon(icon),
          SizedBox(width: icon != null ? 12 : 0),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFE0078),
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8),
      width: 300,
      child: const SafeArea(
        child: Column(
          children: [
            IconTextButton(isSelected: true, text: "AniLore"),
            IconTextButton(icon: Icons.list, text: "List"),
            // Add more IconTextButtons as needed
          ],
        ),
      ),
    );
  }
}
