import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/text_styles/app_text_styles.dart';
import 'package:kurs4_tirkeme1/app_constants/texts/app_texts.dart';
import 'package:kurs4_tirkeme1/presentation/pages/my_first/cubit/counter_cubit.dart';
import 'package:kurs4_tirkeme1/presentation/pages/my_first/cubit/my_first_cubit.dart';
import 'package:kurs4_tirkeme1/presentation/pages/my_second/ui/my_second_page.dart';
import 'package:kurs4_tirkeme1/presentation/widgets/app_bars/custom_app_bar.dart';
import 'package:kurs4_tirkeme1/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:kurs4_tirkeme1/presentation/widgets/buttons/custom_text_button.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  /// State Management
  /// packet: bLoc, Provider, Riverpod, GetX, mobX,...
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    log('build....... $_number');
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppTexts.tapshyrma1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: ((context, state) {
              return CustomTextButton(
                number: state,
                bgColor: AppColors.mainColor,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => MyFirstCubit(state),
                      child: const MySecondPage(),
                    ),
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 54),
          BlocBuilder<MyFirstCubit, MyFirstState>(
            builder: (context, state) {
              if (state is MyFirstInitial) {
                return const Text(
                  'MyFirstInitial',
                  style: AppTextStyles.appBarText,
                );
              }

              if (state is MyFirstPositive) {
                return Column(
                  children: [
                    const Text(
                      'POSITIVE',
                      style: AppTextStyles.appBarText,
                    ),
                    const SizedBox(height: 24),
                    CustomTextButton(
                      number: state.number,
                      bgColor: AppColors.mainColor,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => MyFirstCubit(state.number),
                            child: const MySecondPage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              if (state is MyFirstNegative) {
                return Column(
                  children: [
                    const Text(
                      'NEGATIVE',
                      style: AppTextStyles.appBarText,
                    ),
                    const SizedBox(height: 24),
                    CustomTextButton(
                      number: state.number,
                      bgColor: AppColors.secondaryColor,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => MyFirstCubit(state.number),
                            child: const MySecondPage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              return const SizedBox.shrink();
            },
          ),
          const SizedBox(height: 38.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                onPressed: () {
                  context.read<CounterCubit>().decrement();

                  context.read<MyFirstCubit>().changeNumber(false);
                },
                icon: Icons.remove,
              ),
              const SizedBox(width: 28.0),
              CustomIconButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();

                  context.read<MyFirstCubit>().changeNumber(true);
                },
                icon: Icons.add,
                // iconBgColor: AppColors.red,
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
