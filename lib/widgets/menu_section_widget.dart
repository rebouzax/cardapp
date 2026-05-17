import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_strings.dart';
import '../models/menu_category_model.dart';
import 'category_title_widget.dart';
import 'menu_product_card_widget.dart';
import 'restaurant_header_widget.dart';

class MenuSectionWidget extends StatelessWidget {
  final MenuCategoryModel category;

  const MenuSectionWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final products = category.products;

    final int crossAxisCount = products.length <= 1 ? 1 : 2;

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.fromLTRB(46, 24, 46, 20),
      child: Column(
        children: [
          RestaurantHeaderWidget(categoryTitle: category.title),

          const SizedBox(height: 22),

          CategoryTitleWidget(title: category.title),

          const SizedBox(height: 20),

          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: products.length <= 2 ? 3.4 : 3.1,
              ),
              itemBuilder: (context, index) {
                return MenuProductCardWidget(product: products[index]);
              },
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: const [
              Expanded(child: Divider(color: AppColors.primary, thickness: 3)),
              SizedBox(width: 16),
              Text(
                AppStrings.footerText,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(width: 16),
              Expanded(child: Divider(color: AppColors.primary, thickness: 3)),
            ],
          ),
        ],
      ),
    );
  }
}
