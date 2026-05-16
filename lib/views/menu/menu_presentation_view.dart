import 'package:flutter/material.dart';

import '../../controllers/menu_presentation_controller.dart';
import '../../data/local_menu_data.dart';
import '../../widgets/menu_section_widget.dart';

class MenuPresentationView extends StatefulWidget {
  const MenuPresentationView({super.key});

  @override
  State<MenuPresentationView> createState() => _MenuPresentationViewState();
}

class _MenuPresentationViewState extends State<MenuPresentationView> {
  final MenuPresentationController controller = MenuPresentationController();

  @override
  void initState() {
    super.initState();

    controller.startAutoPresentation(
      totalPages: LocalMenuData.categories.length,
      duration: const Duration(seconds: 10),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categories = LocalMenuData.categories;

    return Scaffold(
      body: PageView.builder(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return MenuSectionWidget(category: categories[index]);
        },
      ),
    );
  }
}
