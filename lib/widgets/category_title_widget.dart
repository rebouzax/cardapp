import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;

  const CategoryTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 3),
      ),
      child: Text(
        title.toUpperCase(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
