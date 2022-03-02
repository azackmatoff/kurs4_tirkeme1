import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/text_styles/app_text_styles.dart';
import 'package:kurs4_tirkeme1/app_constants/texts/app_texts.dart';
import 'package:kurs4_tirkeme1/widgets/app_bars/custom_app_bar.dart';
import 'package:kurs4_tirkeme1/widgets/buttons/custom_text_button.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key key, this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppTexts.tapshyrma2),
      body: Center(
        child: CustomTextButton(
          onTap: null,
          number: number,
          bgColor: AppColors.grey,
          textStyle: AppTextStyles.buttonText.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
