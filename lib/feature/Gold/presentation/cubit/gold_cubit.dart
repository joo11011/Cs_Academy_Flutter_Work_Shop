import 'package:goldy/feature/Gold/data/models/gold_model.dart';
import 'package:goldy/feature/Gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/Gold/presentation/cubit/gold_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitial());

  Future<void> getGold() async {
    emit(GoldLoading());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldError(errMsg: error));
      },
      (goldModel) {
        emit(GoldSuccess(goldModel: goldModel));
      },
    );
  }
}
