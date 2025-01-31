import 'package:boutique_app/data/products.dart';
import 'package:boutique_app/widget/slide_animation.dart';
import 'package:flutter/material.dart';

class CategoryScrollView extends StatelessWidget {
  const CategoryScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            Products.category.length,
            (index) => SlideAnimation(
              index: index,
              child: CategoryItemWidget(index: index),
            ),
          )),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final int index;
  const CategoryItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: index == 0
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        Products.category[index],
        textAlign: TextAlign.center,
      ),
    );
  }
}
