import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:newsapptharwat/Models/news_model.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  List<NewsModel> newsList = []; 

  Future<void> getNews() async {
    final Dio dio = Dio(); 
    try {
      emit(GetNewsLoading());
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=c07af164e6124258845b0b6bec4e12b0');
      final List<dynamic> responseData = response.data['articles'];
      newsList = responseData.map((json) => NewsModel.fromJson(json)).toList(); // Update newsList
      emit(GetNewsSuccess());
    } catch (errorMessage) {
      emit(GetNewsFailure(errorMessage: errorMessage.toString()));
    }
  }
}
