import 'package:dio/dio.dart';

class DioService {
  Dio _dio = Dio();
  DioService() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://10.22.185.141:4652/api/v1/',
      receiveTimeout: const Duration(milliseconds: 10000),
      connectTimeout: const Duration(milliseconds: 10000),
      contentType: "application/json",
    ));
    // ..interceptors.add(LogInterceptor(responseBody: true))
  }

  // get method
  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return _dio.get(path, queryParameters: queryParameters);
  }

  // post method,
  Future<Response> post(String path, {dynamic data}) async {
    return _dio.post(path, data: data);
  }

  // put method
  Future<Response> put(String path, {dynamic data}) async {
    return _dio.put(path, data: data);
  }

  // delete method
  Future<Response> delete(String path, {dynamic data}) async {
    return _dio.delete(path, data: data);
  }
}
