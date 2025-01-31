import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final int index;
  final Widget child;
  const SlideAnimation({super.key, this.index = 0, required this.child});

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> animation;

  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    animation = Tween<Offset>(begin: const Offset(5, 0), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    Future.delayed(
      Duration(milliseconds: (widget.index * 100) + 300),
      () => controller.forward(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1)
          .animate(CurvedAnimation(parent: controller, curve: Curves.linear)),
      child: SlideTransition(
        position: animation,
        child: widget.child,
      ),
    );
  }
}
