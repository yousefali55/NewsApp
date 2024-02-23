import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapptharwat/Data/cubit/get_news_cubit.dart';
import 'package:newsapptharwat/widgets/CategorieslistView.dart';
import 'package:newsapptharwat/widgets/NewsPost.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit()..getNews(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(
                    color:
                        Color.fromARGB(255, 0, 0, 0), // Set the color to white
                    fontSize: 24, // Set the font size for "News"
                    fontWeight: FontWeight.bold, // Optional: Add bold style
                  ),
                ),
                TextSpan(
                  text: 'App',
                  style: TextStyle(
                    color: Colors.yellow, // Set the color to yellow
                    fontSize: 24, // Set the font size for "App"
                    fontWeight: FontWeight.bold, // Optional: Add bold style
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              CategorieslistView(),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: ListNewsPost()),
            ],
          ),
        ),
      ),
    );
  }
}
