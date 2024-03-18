import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;

  final baseUrl = "https://rickandmortyapi.com/";

  HttpService() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));

    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    try {
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw DioError(
          requestOptions: RequestOptions(path: endPoint),
          response: response,
          error: "Failed to load data, status code: ${response.statusCode}",
        );
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
  }

  void initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioError error, handler) {
        print(error.message);
        handler.next(error);
      },
      onRequest: (RequestOptions options, handler) {
        print("${options.method} ${options.path}");
        handler.next(options);
      },
      onResponse: (Response response, handler) {
        print(response.data);
        handler.next(response);
      },
    ));
  }
}
