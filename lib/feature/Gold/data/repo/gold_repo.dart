import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/Gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.goldEndpoint);
      return right(GoldModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
