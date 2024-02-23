import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapptharwat/Data/cubit/get_news_cubit.dart';

class ListNewsPost extends StatelessWidget {
  const ListNewsPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is GetNewsSuccess) {
            final newsList = context.read<GetNewsCubit>().newsList;
          return ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (BuildContext context, int index) {
              final article = newsList[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      article.urlToImage, // Assuming there's an imageUrl property in NewsModel
                      height: 200,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    article.author, 
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    article.description, // Assuming there's a description property in NewsModel
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return Container(); 
        }
      },
    );
  }
}
