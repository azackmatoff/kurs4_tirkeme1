import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/texts/app_texts.dart';
import 'package:kurs4_tirkeme1/pages/my_second_page.dart';
import 'package:kurs4_tirkeme1/widgets/app_bars/custom_app_bar.dart';
import 'package:kurs4_tirkeme1/widgets/buttons/custom_icon_button.dart';
import 'package:kurs4_tirkeme1/widgets/buttons/custom_text_button.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppTexts.tapshyrma1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextButton(
            number: _number,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MySecondPage(number: _number),
              ),
            ),
          ),
          const SizedBox(height: 38.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                onPressed: () => _changeNumber(false),
                icon: Icons.remove,
              ),
              const SizedBox(width: 28.0),
              CustomIconButton(
                onPressed: () => _changeNumber(true),
                icon: Icons.add,
                iconBgColor: AppColors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _changeNumber(bool _isAdd) {
    if (_isAdd) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
