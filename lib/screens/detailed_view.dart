import 'package:boutique_app/data/products.dart';
import 'package:boutique_app/widget/elevated_icon.dart';
import 'package:boutique_app/widget/gap.dart';
import 'package:boutique_app/widget/slide_animation.dart';
import 'package:flutter/material.dart';

class DetailedView extends StatelessWidget {
  final int index;
  const DetailedView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _image(context),
          _productDetailsTile(context),
          _description(),
          const Spacer(),
          buttons(),
          const Gap(height: 20),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: _popDownButton(context),
      actions: [
        SlideAnimation(
          index: 2,
          child: ElevatedIcon(
            icon: Icons.favorite_outline,
            onTap: () {},
          ),
        ),
        Gap.width(width: 10),
      ],
    );
  }

  Row _popDownButton(BuildContext context) {
    return Row(
      children: [
        Gap.width(width: 10),
        SlideAnimation(
          index: 3,
          child: ElevatedIcon(
            icon: Icons.arrow_back,
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    );
  }

  Row buttons() {
    return Row(
      children: [
        Gap.width(width: 20),
        Expanded(
          child: SlideAnimation(
            index: 4,
            child: FilledButton(
              onPressed: () {},
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(
                  Size(double.infinity, 60),
                ),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ),
        Gap.width(width: 25),
        const SlideAnimation(
          index: 5,
          child: ElevatedIcon(
            icon: Icons.shopping_cart,
            height: 30,
          ),
        ),
        Gap.width(width: 25),
      ],
    );
  }

  SlideAnimation _description() {
    return const SlideAnimation(
      index: 3,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Text(
            "A stylish and versatile piece for your wardrobe, this denim jacket features a tailored fit and durable fabric. With adjustable cuffs and functional pockets, it's both practical and fashionable. Perfect for casual or evening wear, it pairs well with jeans or skirts for an effortlessly chic look."),
      ),
    );
  }

  ListTile _productDetailsTile(BuildContext context) {
    return ListTile(
      title: const SlideAnimation(
        child: Text('Product Name'),
      ),
      subtitle: const SlideAnimation(index: 1, child: Text('Color')),
      trailing: SlideAnimation(
        index: 2,
        child: Text(
          "\$55",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }

  Hero _image(BuildContext context) {
    return Hero(
      tag: "$index",
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.elliptical(65, 65),
            bottomRight: Radius.elliptical(65, 65)),
        child: Image.network(
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          Products.products[index],
        ),
      ),
    );
  }
}
