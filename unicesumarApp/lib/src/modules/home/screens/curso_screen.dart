import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';

class CursoScreen extends StatelessWidget {
  const CursoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = 35;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MEU CURSO",
          style: AppFonts.robotobold20,
        ),
      ),
      backgroundColor: AppColors.darkWhite,
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: AppColors.darkCyan,
                        size: 52,
                      ),
                      Container(
                        width: size.width * .65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "INFORMAÇÕES GERAIS",
                              style: AppFonts.robotobold14darkBlue,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'R.A. ',
                                  style: AppFonts.robotobold14darkBlue,
                                  children: [
                                    TextSpan(
                                        text: '123456789',
                                        style: AppFonts.robotosemibold14black),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Curso ',
                                  style: AppFonts.robotobold14darkBlue,
                                  children: [
                                    TextSpan(
                                        text:
                                            'BACHARELADO EM ENGENHARIA DE SOFTWARE',
                                        style: AppFonts.robotosemibold14black),
                                  ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: AppColors.gray,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recomendados para você",
                            style: AppFonts.robotosemibold18grey,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.anotherCyan,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        height: 10,
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('ATIVIDADES COMPLEMENTARES');
                                          },
                                          child: Text(
                                            "ATIVIDADES COMPLEMENTARES",
                                            style: AppFonts.robotobold18cyan,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.anotherCyan,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        height: 10,
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('NOTAS');
                                          },
                                          child: Text(
                                            "NOTAS",
                                            style: AppFonts.robotobold18cyan,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.anotherCyan,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        height: 10,
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('DISCIPLINAS');
                                          },
                                          child: Text(
                                            "DISCIPLINAS",
                                            style: AppFonts.robotobold18cyan,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.anotherCyan,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        height: 10,
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('HISTÓRICO ACADÊMICO');
                                          },
                                          child: Text(
                                            "HISTÓRICO ACADÊMICO",
                                            style: AppFonts.robotobold18cyan,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.anotherCyan,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        height: 10,
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            print('MATRIZ CURRICULAR');
                                          },
                                          child: Text(
                                            "MATRIZ CURRICULAR",
                                            style: AppFonts.robotobold18cyan,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: Container(
                  width: size.width * 0.8,
                  child: Column(
                    children: [
                      Text(
                        "DISCIPLINA MATRICULADAS",
                        style: AppFonts.robotobold22darkBlue,
                      ),
                      Text(
                        "Acesso às aulas, atividades, fóruns, materiais complementares e outros",
                        style: AppFonts.robotoregular14blue,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Disciplina 1');
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.cyan,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.auto_stories_rounded,
                          color: AppColors.white,
                          size: 22,
                        ),
                      ),
                      Container(
                        width: size.width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ESTRUTURA DE DADOS I",
                              style: AppFonts.robotosemibold14black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Inicio - ",
                                    style: AppFonts.robotobold14darkBlue,
                                    children: [
                                      TextSpan(
                                          text: '10/05/2021',
                                          style: AppFonts.robotosemibold14black)
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Módulo - ",
                                    style: AppFonts.robotobold14darkBlue,
                                    children: [
                                      TextSpan(
                                          text: '2021/52',
                                          style: AppFonts.robotosemibold14black)
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    print('Disciplina 2');
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: AppColors.cyan,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.auto_stories_rounded,
                            color: AppColors.white,
                            size: 22,
                          ),
                        ),
                        Container(
                          width: size.width * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ESTRUTURA DE DADOS II",
                                style: AppFonts.robotosemibold14black,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "Inicio - ",
                                      style: AppFonts.robotobold14darkBlue,
                                      children: [
                                        TextSpan(
                                            text: '10/05/2021',
                                            style:
                                                AppFonts.robotosemibold14black)
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Módulo - ",
                                      style: AppFonts.robotobold14darkBlue,
                                      children: [
                                        TextSpan(
                                            text: '2021/52',
                                            style:
                                                AppFonts.robotosemibold14black)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: Container(
                  width: size.width * 0.7,
                  child: Column(
                    children: [
                      Text(
                        "ANDAMENTO DO CURSO",
                        style: AppFonts.robotobold22darkBlue,
                      ),
                      Text(
                        "Acompanhe aqui o seu progresso para a conclusão do curso.",
                        style: AppFonts.robotoregular14blue,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 20),
                child: CircularPercentIndicator(
                  center: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '$percent%\n',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 47,
                          fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(
                            text: 'Disciplinas \nconcluídas',
                            style: AppFonts.robotobold14darkBlue),
                      ],
                    ),
                  ),
                  radius: 170,
                  percent: (percent / 100),
                  lineWidth: 7,
                  progressColor: AppColors.yellow,
                ),
              ),
              Text(
                "Você concluiu 14/40 disciplinas obrigatórias.",
                style: AppFonts.robotobold14darkBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
