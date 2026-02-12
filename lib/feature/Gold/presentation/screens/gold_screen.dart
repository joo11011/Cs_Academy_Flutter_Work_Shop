import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/core/widgets/custom_text.dart';
import 'package:goldy/feature/Gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/Gold/presentation/cubit/gold_cubit.dart';
import 'package:goldy/feature/Gold/presentation/cubit/gold_state.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Gold',
            style: TextStyle(
              color: AppColors.goldColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoading) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.goldColor),
              );
            } else if (state is GoldError) {
              return Center(child: Text(state.errMsg));
            } else if (state is GoldSuccess) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.gold, width: 250, height: 250),
                    CustomText(
                      amount: state.goldModel.price!.toDouble(),
                      currency: 'USD',
                      fontSize: 20,
                      color: AppColors.goldColor,
                    ),
                  ],
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
