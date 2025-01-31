import 'dart:math';

import 'package:boutique_app/data/products.dart';
import 'package:boutique_app/screens/detailed_view.dart';
import 'package:boutique_app/widget/gap.dart';
import 'package:boutique_app/widget/slide_animation.dart';
import 'package:flutter/material.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), // Prevents scrolling inside GridView
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 2 / 2.8,
      ),
      itemCount: Products.products.length,
      itemBuilder: (context, index) {
        return SlideAnimation(
          index: index,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailedView(index: index),
              ));
            },
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  //image
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        flightShuttleBuilder: (flightContext, animation,
                            flightDirection, fromHeroContext, toHeroContext) {
                          return AnimatedBuilder(
                            animation: animation,
                            builder: (context, child) {
                              double value = animation.value;
                              return Transform(
                                transform: Matrix4.identity()
                                  ..setEntry(3, 0, 0.0001)
                                  ..rotateY(value * (2 * pi)),
                                alignment: Alignment.center,
                                child: toHeroContext.widget,
                              );
                            },
                          );
                        },
                        tag: '$index',
                        child: Image.network(
                          width: double.infinity,
                          fit: BoxFit.cover,
                          Products.products[index],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 5),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Product Name',
                    ),
                  ),
                  const Gap(height: 5),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("\$55.6"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
