import 'package:goldy/feature/Gold/data/models/gold_model.dart';

abstract class GoldState {}

class GoldInitial extends GoldState {}

class GoldLoading extends GoldState {}

class GoldError extends GoldState {
  final String errMsg;
  GoldError({required this.errMsg});
}

class GoldSuccess extends GoldState {
  final GoldModel goldModel;

  GoldSuccess({required this.goldModel});
}
