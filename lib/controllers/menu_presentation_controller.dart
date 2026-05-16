import 'dart:async';

import 'package:flutter/material.dart';

class MenuPresentationController {
  final PageController pageController = PageController();

  Timer? _timer;
  int currentPage = 0;

  void startAutoPresentation({
    required int totalPages,
    Duration duration = const Duration(seconds: 10),
  }) {
    _timer?.cancel();

    if (totalPages <= 1) return;

    _timer = Timer.periodic(duration, (_) {
      if (!pageController.hasClients) return;

      currentPage++;

      if (currentPage >= totalPages) {
        currentPage = 0;
      }

      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  void dispose() {
    _timer?.cancel();
    pageController.dispose();
  }
}
