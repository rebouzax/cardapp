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

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.fromLTRB(46, 28, 46, 22),
      child: Column(
        children: [
          RestaurantHeaderWidget(categoryTitle: category.title),
          const SizedBox(height: 28),

          Expanded(
            child: Row(
              children: [
                Expanded(flex: 3, child: _buildFeaturedProduct()),
                const SizedBox(width: 28),

                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      CategoryTitleWidget(title: category.title),
                      const SizedBox(height: 22),
                      Expanded(
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: products.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: products.length <= 2 ? 2 : 3,
                                mainAxisSpacing: 22,
                                crossAxisSpacing: 22,
                                childAspectRatio: products.length <= 2
                                    ? 1.15
                                    : 0.88,
                              ),
                          itemBuilder: (context, index) {
                            return MenuProductCardWidget(
                              product: products[index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

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

  Widget _buildFeaturedProduct() {
    if (category.products.isEmpty) {
      return const SizedBox.shrink();
    }

    final featuredProduct = category.products.first;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 3),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            featuredProduct.imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: AppColors.backgroundDark,
                child: const Icon(
                  Icons.restaurant_menu,
                  size: 90,
                  color: AppColors.primary,
                ),
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black.withValues(alpha: 0.45),
              child: Text(
                featuredProduct.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
