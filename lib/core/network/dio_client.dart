import 'package:dio/dio.dart';
import 'package:my_app/core/network/dio_interceptor.dart';

class DioClient {
  final dio = Dio(
    BaseOptions(
        baseUrl: "https://jsonplaceholder.typicode.com",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10)),
  )..interceptors.add(DioInterceptor());
}
