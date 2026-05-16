import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_strings.dart';

class RestaurantHeaderWidget extends StatelessWidget {
  final String categoryTitle;

  const RestaurantHeaderWidget({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.menuTitle.toUpperCase(),
          style: const TextStyle(
            fontSize: 44,
            fontWeight: FontWeight.w900,
            letterSpacing: 5,
            color: AppColors.secondary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          categoryTitle.toUpperCase(),
          style: const TextStyle(
            fontSize: 82,
            fontWeight: FontWeight.w900,
            height: 0.95,
            letterSpacing: 2,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 18),
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
