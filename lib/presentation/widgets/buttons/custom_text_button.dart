import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/text_styles/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    @required this.onTap,
    @required this.number,
    this.bgColor,
    this.textStyle,
    Key key,
  }) : super(key: key);

  final int number;
  final GestureTapCallback onTap;
  final Color bgColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 120.0, vertical: 18.0),
          child: Text(
            'сан: ' + number.toString(),
            style: textStyle ?? AppTextStyles.buttonText,
          ),
        ),
      ),
    );
  }
}
