import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/text_styles/app_text_styles.dart';
import 'package:kurs4_tirkeme1/app_constants/texts/app_texts.dart';
import 'package:kurs4_tirkeme1/presentation/pages/my_first/cubit/my_first_cubit.dart';
import 'package:kurs4_tirkeme1/presentation/widgets/app_bars/custom_app_bar.dart';
import 'package:kurs4_tirkeme1/presentation/widgets/buttons/custom_text_button.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppTexts.tapshyrma2),
      body: Center(
        child: CustomTextButton(
          onTap: null,
          number: context.read<MyFirstCubit>().number,
          bgColor: AppColors.grey,
          textStyle: AppTextStyles.buttonText.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
