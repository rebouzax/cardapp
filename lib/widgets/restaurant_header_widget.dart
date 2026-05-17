import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_images.dart';
import '../core/constants/app_strings.dart';

class RestaurantHeaderWidget extends StatelessWidget {
  final String categoryTitle;

  const RestaurantHeaderWidget({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 220,
              height: 90,
              child: Image.asset(
                AppImages.logotipo,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    AppStrings.restaurantName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: AppColors.secondary,
                    ),
                  );
                },
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Text(
                    AppStrings.menuTitle.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    categoryTitle.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 68,
                      fontWeight: FontWeight.w900,
                      height: 0.95,
                      letterSpacing: 2,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 220),
          ],
        ),

        const SizedBox(height: 14),

        Row(
          children: const [
            Expanded(child: Divider(color: AppColors.primary, thickness: 3)),
            SizedBox(width: 12),
            CircleAvatar(radius: 5, backgroundColor: AppColors.primary),
            SizedBox(width: 12),
            Expanded(child: Divider(color: AppColors.primary, thickness: 3)),
          ],
        ),
      ],
    );
  }
}
