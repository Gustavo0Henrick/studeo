import 'package:flutter/material.dart';

import 'package:unicesumar/src/core/widgets/set_items_bar/set_item.dart';

class SetItemsBar extends StatelessWidget {
  const SetItemsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              icon: Icons.assignment,
              text: "Notas",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              text: "Agendar Provas",
              icon: Icons.date_range_rounded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              text: "Biblioteca",
              icon: Icons.menu_book_rounded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              text: "Financeiro",
              icon: Icons.paid_rounded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              text: "Carteirinha",
              icon: Icons.badge_rounded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SetItem(
              text: "Frequência",
              icon: Icons.today_rounded,
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
