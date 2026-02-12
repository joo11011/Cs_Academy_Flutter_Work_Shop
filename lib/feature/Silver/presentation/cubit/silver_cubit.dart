import 'package:bloc/bloc.dart';
import 'package:goldy/feature/Silver/data/models/silver_model.dart';
import 'package:goldy/feature/Silver/data/repo/silver_repo.dart';
import 'package:meta/meta.dart';

part 'silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitial());

  Future<void> getSilver() async {
    emit(SilverLoading());
    final res = await silverRepo.getSilver();
    res.fold(
      (error) {
        emit(SilverError(errorMsg: error));
      },
      (silverModel) {
        emit(SilverSuccess(silverModel: silverModel));
      },
    );
  }
}
