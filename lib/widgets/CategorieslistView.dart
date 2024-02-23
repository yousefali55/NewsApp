import 'package:flutter/material.dart';
import 'package:newsapptharwat/Models/category_model.dart';
import 'package:newsapptharwat/widgets/CategoryCard.dart';

class CategorieslistView extends StatelessWidget {
  CategorieslistView({
    super.key,
  });
  List <CategoryModel> categories = [
    CategoryModel(categoryName: 'Business', image: 'assets/images/Business.webp'),
    CategoryModel(categoryName: 'Entertainment', image: 'assets/images/Entertainment.webp'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.webp'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/scientists.webp'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/Sports.webp'),
    CategoryModel(categoryName: 'Technology', image: 'assets/images/Technology.webp'),
    CategoryModel(categoryName: 'General', image: 'assets/images/General.webp'),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return  CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
