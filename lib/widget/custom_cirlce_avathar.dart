import 'package:flutter/material.dart';

class CustomCirlceAvathar extends StatelessWidget {
  final String url;
  final double? radius;
  const CustomCirlceAvathar({super.key, required this.url, this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
      radius: radius,
    );
  }
}
