import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../views/menu/menu_presentation_view.dart';

class CardappApp extends StatelessWidget {
  const CardappApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardapp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MenuPresentationView(),
    );
  }
}
