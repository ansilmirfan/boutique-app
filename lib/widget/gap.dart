import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double height;
  final double width;
  const Gap({super.key, required this.height, this.width = 0.0});
  factory Gap.width({required double width}) {
    return Gap(
      height: 0.0,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
