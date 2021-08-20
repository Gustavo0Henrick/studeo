import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';

class SetItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextAlign textAlign;
  const SetItem(
      {Key? key,
      required this.text,
      required this.icon,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: AppColors.white)),
            width: 80,
            height: 80,
            child: Center(
              child: Icon(
                icon,
                color: AppColors.white,
                size: 40,
              ),
            ),
          ),
          Text(
            text,
            style: AppFonts.robotoregular14,
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
