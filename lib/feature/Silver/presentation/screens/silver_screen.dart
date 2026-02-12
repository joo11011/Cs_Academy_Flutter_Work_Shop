import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constants/app_colors.dart';
import 'package:goldy/core/constants/app_images.dart';
import 'package:goldy/core/widgets/custom_text.dart';
import 'package:goldy/feature/Silver/data/repo/silver_repo.dart';
import 'package:goldy/feature/Silver/presentation/cubit/silver_cubit.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Silver',
            style: TextStyle(
              color: AppColors.silverColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverLoading) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.silverColor),
              );
            } else if (state is SilverError) {
              return Center(child: Text(state.errorMsg));
            } else if (state is SilverSuccess) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.silver, width: 250, height: 250),
                    CustomText(
                      amount: state.silverModel.price!.toDouble(),
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
