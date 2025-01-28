import 'package:boutique_app/data/products.dart';
import 'package:boutique_app/screens/home/widget/category_scroll_view.dart';
import 'package:boutique_app/screens/home/widget/custom_card.dart';
import 'package:boutique_app/screens/home/widget/custom_gridview.dart';
import 'package:boutique_app/screens/home/widget/custom_text_field.dart';
import 'package:boutique_app/widget/custom_cirlce_avathar.dart';
import 'package:boutique_app/widget/elevated_icon.dart';
import 'package:boutique_app/widget/gap.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            searchAndFilter(),
            const Gap(height: 10),
            _offerCard(),
            const Gap(height: 20),
            const CategoryScrollView(),
            const Gap(height: 20),
            const CustomGridview(),
          ],
        ),
      ),
    );
  }

  CustomCard _offerCard() {
    return const CustomCard(
        imageUrl:
            "https://static.vecteezy.com/system/resources/previews/044/846/982/non_2x/beautiful-emotional-woman-enjoying-shopping-on-isolated-transparent-background-free-png.png",
        title: 'Big Sale',
        description: 'Unbeatable discounts on all your favorite items');
  }

  Row searchAndFilter() {
    return Row(
      children: [
        const Expanded(
          child: CustomTextField(),
        ),
        Gap.width(
          width: 20,
        ),
        const ElevatedIcon(
          height: 25,
          icon: Icons.filter_alt_outlined,
        )
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: Row(
        children: [
          // widget that provides gap
          // Gap give the heigh and the factory constructor Gap.width gives gap vertically
          Gap.width(width: 10),
          // custome icon that gives elevation aroud the icon
          const ElevatedIcon(
            icon: Icons.grid_view_rounded,
          ),
        ],
      ),
      // title
      title: Column(
        children: [
          Text(
            'Hello Zunisha',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            'New York',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      //trailing
      actions: [
        CustomCirlceAvathar(
          url: Products.products[0],
        ),
        Gap.width(width: 20),
      ],
    );
  }
}
