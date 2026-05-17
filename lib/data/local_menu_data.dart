import '../core/constants/app_images.dart';
import '../models/menu_category_model.dart';
import '../models/menu_product_model.dart';

class LocalMenuData {
  static const List<MenuCategoryModel> categories = [
    MenuCategoryModel(
      title: 'Salgados',
      products: [
        MenuProductModel(
          name: 'Salgados Variados',
          imagePath: AppImages.salgados,
          category: 'Salgados',
        ),
        MenuProductModel(
          name: 'Cuscuz Recheado',
          imagePath: AppImages.cuscus,
          category: 'Salgados',
        ),
        MenuProductModel(
          name: 'Bolos Salgados',
          imagePath: AppImages.bolosSalgados,
          category: 'Salgados',
        ),
      ],
    ),

    MenuCategoryModel(
      title: 'Bolos',
      products: [
        MenuProductModel(
          name: 'Bolos Caseiros',
          imagePath: AppImages.bolos,
          category: 'Bolos',
        ),
        MenuProductModel(
          name: 'Bolos Especiais',
          imagePath: AppImages.bolos2,
          category: 'Bolos',
        ),
        MenuProductModel(
          name: 'Bolos Decorados',
          imagePath: AppImages.bolos3,
          category: 'Bolos',
        ),
        MenuProductModel(
          name: 'Bolos Artesanais',
          imagePath: AppImages.bolos4,
          category: 'Bolos',
        ),
        MenuProductModel(
          name: 'Bolo Especial',
          imagePath: AppImages.bolos5,
          category: 'Bolos',
        ),
        MenuProductModel(
          name: 'Doces',
          imagePath: AppImages.doce,
          category: 'Bolos',
        ),
      ],
    ),

    MenuCategoryModel(
      title: 'Sanduíches',
      products: [
        MenuProductModel(
          name: 'Sanduíches',
          imagePath: AppImages.sanduba,
          category: 'Sanduíches',
        ),
      ],
    ),

    MenuCategoryModel(
      title: 'Cafeteria',
      products: [
        MenuProductModel(
          name: 'Café gelado',
          imagePath: AppImages.chococafe,
          category: 'Cafeteria',
        ),
        MenuProductModel(
          name: 'Capuccino',
          imagePath: AppImages.cafechoco,
          category: 'Cafeteria',
        ),
        MenuProductModel(
          name: 'Café com Beiju',
          imagePath: AppImages.cafeBeiju,
          category: 'Cafeteria',
        ),
        MenuProductModel(
          name: 'Café com Pão de Queijo',
          imagePath: AppImages.cafepaoqueijo,
          category: 'Cafeteria',
        ),
      ],
    ),

    MenuCategoryModel(
      title: 'Nossa Cafeteria',
      products: [
        MenuProductModel(
          name: 'Doce&Café',
          imagePath: AppImages.logo,
          category: 'Nossa Cafeteria',
        ),
        MenuProductModel(
          name: 'Nossos Donos',
          imagePath: AppImages.donos,
          category: 'Nossa Cafeteria',
        ),
        MenuProductModel(
          name: 'Nossos Clientes',
          imagePath: AppImages.clientes,
          category: 'Nossa Cafeteria',
        ),
        MenuProductModel(
          name: 'Clientes Doce&Café',
          imagePath: AppImages.clientes2,
          category: 'Nossa Cafeteria',
        ),
        MenuProductModel(
          name: 'Momentos Especiais',
          imagePath: AppImages.clientes3,
          category: 'Nossa Cafeteria',
        ),
        MenuProductModel(
          name: 'Nosso Espaço',
          imagePath: AppImages.area,
          category: 'Nossa Cafeteria',
        ),
      ],
    ),
  ];
}
