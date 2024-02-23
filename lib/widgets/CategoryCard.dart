import 'package:flutter/material.dart';
import 'package:newsapptharwat/Models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 100,
        width: 200,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                category.image,
              )),
        ),
        child:  Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
