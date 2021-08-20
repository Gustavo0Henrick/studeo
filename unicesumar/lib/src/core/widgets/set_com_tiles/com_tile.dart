import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';

class ComTile extends StatelessWidget {
  final String title;
  final String disciplina;
  final String atividade;
  final String data;
  const ComTile(
      {Key? key,
      required this.title,
      required this.disciplina,
      required this.atividade,
      required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          top: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          left: BorderSide(
            color: Colors.blue,
            width: 5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                title,
                style: AppFonts.robotobold14darkBlue,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Disciplina: ",
                style: AppFonts.robotobold14darkBlue,
                children: [
                  TextSpan(
                      text: disciplina, style: AppFonts.robotosemibold14black),
                  TextSpan(
                      text: '\nAtividade: ',
                      style: AppFonts.robotobold14darkBlue),
                  TextSpan(
                      text: atividade, style: AppFonts.robotosemibold14black),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 20,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.info,
                      color: AppColors.white,
                      size: 17,
                    ),
                    Text(
                      "Disponível até: $data",
                      style: AppFonts.robotobold10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
