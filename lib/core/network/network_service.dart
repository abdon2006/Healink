import 'package:dio/dio.dart';

class NetworkService {
  final Dio dio;

  NetworkService({required this.dio}) {
    dio.options = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
  }
}
