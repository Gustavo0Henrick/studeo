import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:unicesumar/src/core/models/user_model.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';
import 'package:unicesumar/src/core/themes/app_images/app_images.dart';
import 'package:unicesumar/src/core/widgets/carrousel/carrousel_controller.dart';
import 'package:unicesumar/src/core/widgets/list_card_home/list_card_home.dart';
import 'package:unicesumar/src/core/widgets/set_com_tiles/set_com.dart';
import 'package:unicesumar/src/core/widgets/set_items_bar/set_items_bar.dart';
import 'package:unicesumar/src/modules/home/screens/curso_screen.dart';
import 'package:unicesumar/src/modules/home/screens/home_screen.dart';
import 'package:unicesumar/src/modules/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  final UserModel? user;
  const HomePage({Key? key, this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _telas = [
      HomeScreen(
        user: widget.user,
      ),
      CursoScreen(),
      Container(color: AppColors.blue),
      Container(color: AppColors.gray),
    ];

    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(
                  color: _indiceAtual == 0 ? AppColors.cyan : AppColors.gray),
            ),
            icon: Icon(
              Icons.home_rounded,
              color: _indiceAtual == 0 ? AppColors.cyan : AppColors.gray,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Meu Curso",
              style: TextStyle(
                  color: _indiceAtual == 1 ? AppColors.cyan : AppColors.gray),
            ),
            icon: Icon(
              Icons.school_rounded,
              color: _indiceAtual == 1 ? AppColors.cyan : AppColors.gray,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Disciplinas",
              style: TextStyle(
                  color: _indiceAtual == 2 ? AppColors.cyan : AppColors.gray),
            ),
            icon: Icon(
              Icons.auto_stories_rounded,
              color: _indiceAtual == 2 ? AppColors.cyan : AppColors.gray,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Notificação",
              style: TextStyle(
                  color: _indiceAtual == 3 ? AppColors.cyan : AppColors.gray),
            ),
            icon: Icon(
              Icons.notifications,
              color: _indiceAtual == 3 ? AppColors.cyan : AppColors.gray,
            ),
          ),
        ],
        currentIndex: _indiceAtual,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
