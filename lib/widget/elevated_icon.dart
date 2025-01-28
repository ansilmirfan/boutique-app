import 'package:flutter/material.dart';

class ElevatedIcon extends StatelessWidget {
  final IconData icon;
  final double height;
  const ElevatedIcon({super.key, required this.icon, this.height = 20.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
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
      ],
    );
  }
}
