import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';

class CardHome extends StatelessWidget {
  final color;
  final text;
  final subtext;
  const CardHome({Key? key, required this.color, this.text, this.subtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: color,
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppFonts.robotobold14,
              ),
              Text(
                subtext,
                style: AppFonts.robotobold20,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
