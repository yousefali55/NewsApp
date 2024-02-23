part of 'get_news_cubit.dart';

sealed class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}
final class GetNewsLoading extends GetNewsState {}
final class GetNewsSuccess extends GetNewsState {}
final class GetNewsFailure extends GetNewsState {
  final String errorMessage;
  GetNewsFailure({required this.errorMessage});
}
