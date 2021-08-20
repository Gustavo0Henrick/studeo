import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/data/compromisso.dart';
import 'package:unicesumar/src/core/widgets/set_com_tiles/com_tile.dart';

class SetCom extends StatelessWidget {
  const SetCom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: ComTile(
            data: Compromisso.compromissos[0]['date'].toString(),
            title: Compromisso.compromissos[0]['title'].toString(),
            disciplina: Compromisso.compromissos[0]['disciplina'].toString(),
            atividade: Compromisso.compromissos[0]['atividade'].toString(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: ComTile(
            data: Compromisso.compromissos[1]['date'].toString(),
            title: Compromisso.compromissos[1]['title'].toString(),
            disciplina: Compromisso.compromissos[1]['disciplina'].toString(),
            atividade: Compromisso.compromissos[1]['atividade'].toString(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: ComTile(
            data: Compromisso.compromissos[2]['date'].toString(),
            title: Compromisso.compromissos[2]['title'].toString(),
            disciplina: Compromisso.compromissos[2]['disciplina'].toString(),
            atividade: Compromisso.compromissos[2]['atividade'].toString(),
          ),
        ),
      ],
    );
  }
}
