import 'package:flutter/material.dart';

class ElevatedIcon extends StatelessWidget {
  final IconData icon;
  final double height;
  final void Function()? onTap;
  const ElevatedIcon(
      {super.key, required this.icon, this.height = 20.0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            size: height,
            icon,
          ),
        ),
      ),
    );
  }
}
