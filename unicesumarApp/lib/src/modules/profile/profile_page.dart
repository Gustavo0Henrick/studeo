import 'package:flutter/material.dart';
import 'package:unicesumar/src/core/models/user_model.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';

class ProfilePage extends StatelessWidget {
  final UserModel? user;
  const ProfilePage({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inicialName = user!.name.toString();
    inicialName = inicialName[0];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
        title: Text(
          "PERFIL",
          style: AppFonts.robotobold20,
        ),
        centerTitle: true,
        elevation: 3,
      ),
      backgroundColor: AppColors.darkWhite,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "MEUS DADOS",
                  style: TextStyle(
                      color: AppColors.shadowCyan,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Mantenha seus dados cadastrais atualizados.",
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.darkCyan,
                      radius: 52,
                      child: Text(
                        "$inicialName",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    Positioned(
                      top: 67,
                      left: 65,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.cyan,
                          ),
                          height: 35,
                          width: 35,
                          child: Icon(
                            Icons.edit,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: size.width,
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
