// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/Silver/data/models/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.silverEndpoint,
      );
      return right(SilverModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
