import 'package:boutique_app/data/products.dart';
import 'package:boutique_app/screens/detailed_view.dart';
import 'package:boutique_app/widget/gap.dart';
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
        return InkWell(
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
        );
      },
    );
  }
}
