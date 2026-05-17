import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import '../models/menu_product_model.dart';

class MenuProductCardWidget extends StatelessWidget {
  final MenuProductModel product;

  const MenuProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.primary, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
              child: Image.asset(
                product.imagePath,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: AppColors.backgroundDark,
                    child: const Icon(
                      Icons.image_not_supported_outlined,
                      size: 54,
                      color: AppColors.primary,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Center(
                child: Text(
                  product.name,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: AppColors.textDark,
                    height: 1.05,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
