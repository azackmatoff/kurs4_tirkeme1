import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/app_constants/colors/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  const CustomIconButton({
    @required this.onPressed,
    @required this.icon,
    this.iconBgColor,
    this.iconColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon, color: iconColor ?? AppColors.white),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 1,
        primary: iconBgColor ?? AppColors.secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      ),
    );
  }
}
