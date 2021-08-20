import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:unicesumar/src/core/data/compromisso.dart';
import 'package:unicesumar/src/core/models/user_model.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';
import 'package:unicesumar/src/core/themes/app_images/app_images.dart';
import 'package:unicesumar/src/core/widgets/carrousel/carrousel_controller.dart';
import 'package:unicesumar/src/core/widgets/list_card_home/list_card_home.dart';
import 'package:unicesumar/src/core/widgets/set_com_tiles/set_com.dart';
import 'package:unicesumar/src/core/widgets/set_items_bar/set_items_bar.dart';
import 'package:unicesumar/src/modules/profile/profile_page.dart';

class HomeScreen extends StatefulWidget {
  final UserModel? user;
  const HomeScreen({Key? key, this.user}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = CarrouselController();

  PageController? pageController;
  bool exp1 = false;
  bool exp2 = false;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> month = [
      "Jan",
      "Fev",
      "Mar",
      "Abr",
      "Mai",
      "Jun",
      "Jul",
      "Ago",
      "Set",
      "Out",
      "Nov",
      "Dev",
    ];
    DateTime dateNow = new DateTime.now();

    String dateToday =
        "${dateNow.day} ${month[(dateNow.month - 1)]} ${dateNow.year}";

    var inicialName = widget.user!.name.toString();
    inicialName = inicialName[0];
    Size size = MediaQuery.of(context).size;
    final percent1 = 35;
    final percent2 = 100;
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      appBar: AppBar(
        backgroundColor: AppColors.cyan,
        elevation: 2,
        actions: [
          Icon(
            Icons.forum_rounded,
            color: AppColors.white,
          ),
          PopupMenuButton(
              onSelected: (value) {
                if (value == 5) {
                  Navigator.pushReplacementNamed(context, "/login");
                } else if (value == 1) {
                  print(widget.user);
                }
              },
              icon: Icon(
                Icons.more_vert_rounded,
                color: AppColors.white,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: AppColors.gray,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Studeo"),
                          ),
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.error_outline_rounded,
                            color: AppColors.gray,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Reportar Erro"),
                          ),
                        ],
                      ),
                      value: 2,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.confirmation_num,
                            color: AppColors.gray,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Atendimento Eletrônico"),
                          ),
                        ],
                      ),
                      value: 3,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_rounded,
                            color: AppColors.gray,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Alterar Senha"),
                          ),
                        ],
                      ),
                      value: 4,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            Icons.exit_to_app_rounded,
                            color: AppColors.gray,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Sair"),
                          ),
                        ],
                      ),
                      value: 5,
                    )
                  ]),
        ],
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
            right: 200,
          ),
          child: SafeArea(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ProfilePage(
                              user: widget.user,
                            )));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.darkCyan,
                    child: Text(
                      "$inicialName",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "${widget.user!.name}",
                      style: AppFonts.robotoregular20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: exp1 || exp2 ? size.height * 2.4 : size.height * 2.1,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: AppColors.lightCyan,
                    height: size.height * 0.3,
                    width: size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bem vindo ao",
                                style: AppFonts.robotoregular20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  AppImages.logoStudeoLinear,
                                  color: AppColors.white,
                                  scale: 1.5,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  color: AppColors.white,
                                  width: 2,
                                  height: 30,
                                ),
                              ),
                              Image.asset(
                                AppImages.logoUnicesumar,
                                scale: 5,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: SetItemsBar(),
              ),
              Positioned(
                top: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: size.height * 0.5,
                    width: size.width * 0.95,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      color: AppColors.white,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "MEUS COMPROMISSOS",
                                  style: AppFonts.robotobold18darkBlue,
                                ),
                                Text(
                                  "Hoje, $dateToday",
                                  style: AppFonts.robotobold14blue,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 20),
                              child: Container(
                                height: size.height * 0.35,
                                child: SetCom(),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Veja mais compromissos",
                                  style: AppFonts.robotobold14blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 650,
                child: Container(
                  height: size.height * 0.15,
                  width: size.width * 1,
                  child: ListCardHome(),
                ),
              ),
              Positioned(
                top: 800,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.zero,
                      width: size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 15, bottom: 15),
                            child: Row(
                              children: [
                                Text(
                                  "DISCIPLINAS",
                                  style: AppFonts.robotobold18darkBlue,
                                )
                              ],
                            ),
                          ),
                          ExpansionTile(
                            onExpansionChanged: (value) {
                              if (value == true) {
                                setState(() {
                                  exp1 = true;
                                });
                              } else {
                                setState(() {
                                  exp1 = false;
                                });
                              }
                            },
                            backgroundColor: Colors.blue[100],
                            collapsedBackgroundColor: Colors.blue[100],
                            title: Text(
                              "DISCINPLINAS MATRICULADAS",
                              style: AppFonts.robotobold14darkBlue,
                            ),
                            children: [
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Estrutura de Dados I"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Detalhes",
                                            style:
                                                AppFonts.robotobold14darkBlue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Estrutura de Dados II"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Detalhes",
                                            style:
                                                AppFonts.robotobold14darkBlue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Mais disciplinas",
                                            style: AppFonts.robotobold14blue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            onExpansionChanged: (value) {
                              if (value == true) {
                                setState(() {
                                  exp2 = true;
                                });
                              } else {
                                setState(() {
                                  exp2 = false;
                                });
                              }
                            },
                            backgroundColor: Colors.blue[100],
                            collapsedBackgroundColor: Colors.blue[100],
                            title: Text(
                              "PALESTRAS / NIVELAMENTO/ OUTROS AMBIENTES",
                              style: AppFonts.robotobold14darkBlue,
                            ),
                            children: [
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Curso de Inglês"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Detalhes",
                                            style:
                                                AppFonts.robotobold14darkBlue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "Ambientes Profissionais - Engenharia de Software"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Detalhes",
                                            style:
                                                AppFonts.robotobold14darkBlue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                color: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Mais disciplinas",
                                            style: AppFonts.robotobold14blue,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: size.width,
                        height: 150,
                        child: Column(
                          children: [
                            Text(
                              "ANDAMENTO DO CURSO",
                              style: AppFonts.robotobold18darkBlue,
                            ),
                            Container(
                              width: 260,
                              child: Text(
                                "Acompanhe aqui o seu progresso para a conclusão do curso.",
                                style: AppFonts.robotoregular14blue,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircularPercentIndicator(
                                center: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: '$percent1%\n',
                                    style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontSize: 47,
                                        fontWeight: FontWeight.w300),
                                    children: [
                                      TextSpan(
                                          text: 'Carga horaria \ncumprida',
                                          style: AppFonts.robotobold14darkBlue),
                                    ],
                                  ),
                                ),
                                radius: 170,
                                percent: (percent1 / 100),
                                lineWidth: 7,
                                progressColor: AppColors.yellow,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Você concluiu 14/40 disciplinas obrigatórias",
                                    style: AppFonts.robotobold14darkBlue,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                center: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: '$percent2\n',
                                    style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontSize: 47,
                                        fontWeight: FontWeight.w300),
                                    children: [
                                      TextSpan(
                                          text: 'de 100 horas\n',
                                          style: TextStyle(
                                              color: AppColors.lightBlue,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: 'atividades complementares',
                                          style: AppFonts.robotobold14darkBlue),
                                    ],
                                  ),
                                ),
                                radius: 170,
                                percent: (percent2 / 100),
                                lineWidth: 7,
                                progressColor: AppColors.cyan,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Container(
                                  width: 150,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.schedule,
                                        color: AppColors.darkBlue,
                                        size: 18,
                                      ),
                                      Text(
                                        "Falta cumprir",
                                        style: AppFonts.robotobold14darkBlue,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "0h",
                                        style: AppFonts.robotobold14darkBlue,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                        height: 200,
                        width: size.width,
                        color: AppColors.gray,
                        child: PageView(
                          controller: pageController,
                          onPageChanged: (int value) {
                            setState(() {
                              controller.setPage(value);
                            });
                          },
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: size.height,
                              width: size.width,
                              color: AppColors.red,
                            ),
                            Container(
                              height: size.height,
                              width: size.width,
                              color: AppColors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: controller.currentPage == 0
                                    ? AppColors.cyan
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                            height: 15,
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: controller.currentPage == 1
                                    ? AppColors.cyan
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                            height: 15,
                            width: 15,
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
    );
  }
}
