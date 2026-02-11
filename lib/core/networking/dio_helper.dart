import 'package:dio/dio.dart';
import 'package:goldy/core/networking/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        // headers: {'Content-Type': 'application/json'},
      ),
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await dio.get(endPoint, queryParameters: queryParameters);
    return res;
  }
}
