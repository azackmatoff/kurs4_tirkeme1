import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';
import 'package:kurs4_tirkeme1/app_constants/text_styles/app_text_styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;

  const CustomAppBar({
    @required this.title,
    this.centerTitle,
    Key key,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.black, //change your color here
      ),
      title: Text(
        widget.title,
        style: AppTextStyles.appBarText,
      ),
      centerTitle: widget.centerTitle ?? true,
      backgroundColor: AppColors.white,
      elevation: 0,
    );
  }
}
