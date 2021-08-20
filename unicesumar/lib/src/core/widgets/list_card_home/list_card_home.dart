import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/widgets/list_card_home/card_home.dart';

class ListCardHome extends StatelessWidget {
  const ListCardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CardHome(
          text: 'Você ganha e seus amigos também',
          subtext: "Eu Indico",
          color: LinearGradient(
            stops: [0.01, 0.9],
            colors: [Colors.orange, Colors.yellow],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        CardHome(
          text: 'Acesse o conteúdo',
          subtext: "Semana de Conhecimentos Gerais",
          color: LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        CardHome(
          text: 'Unicesumar',
          subtext: "EAD",
          color: LinearGradient(
            colors: [Colors.cyan, Colors.cyanAccent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}
