import 'package:dio/dio.dart';

class DioInterceptor extends InterceptorsWrapper{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("onRequest Called");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("onResponse Called");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print("onError Called");
    super.onError(err, handler);
  }
}