import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicesumar/src/core/data/users.dart';
import 'package:unicesumar/src/core/models/user_model.dart';
import 'package:unicesumar/src/core/themes/app_colors/app_colors.dart';
import 'package:unicesumar/src/core/themes/app_fonts/app_fonts.dart';
import 'package:unicesumar/src/core/themes/app_images/app_images.dart';
import 'package:unicesumar/src/modules/home/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController raController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var raColor = AppColors.gray;
  var passwordColor = AppColors.gray;

  bool obscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.cyan,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  AppImages.logoStudeoLinear,
                  color: AppColors.white,
                ),
              ),
              Container(
                width: size.width * 0.7,
                child: Text(
                  "Bem vindo ao seu ambiente virtual de aprendizagem",
                  style: AppFonts.robotosemibold24,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          width: size.width * 0.7,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  setState(() {
                                    raColor = AppColors.red;
                                  });
                                } else {
                                  setState(() {
                                    raColor = AppColors.gray;
                                  });
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(9),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.,]+')),
                              ],
                              keyboardType: TextInputType.number,
                              controller: raController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "RA",
                                hintStyle: TextStyle(color: raColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: size.width * 0.7,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      passwordColor = AppColors.red;
                                    });
                                  } else {
                                    setState(() {
                                      passwordColor = AppColors.gray;
                                    });
                                  }
                                },
                                obscureText: obscure,
                                controller: passwordController,
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          obscure = !obscure;
                                        });
                                      },
                                      child: obscure
                                          ? Icon(
                                              Icons.visibility_off,
                                              color: passwordColor,
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color: passwordColor,
                                            ),
                                    ),
                                    border: InputBorder.none,
                                    hintText: "Senha",
                                    hintStyle: TextStyle(color: passwordColor)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.zero,
                        width: size.width * 0.7,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            primary: AppColors.yellow,
                          ),
                          onPressed: () {
                            bool found = false;
                            var listUsers = Users.users;
                            if (_formKey.currentState!.validate()) {
                              listUsers.forEach((element) {
                                if (element["ra"] == raController.text) {
                                  if (element["password"] ==
                                      passwordController.text) {
                                    found = true;
                                    UserModel user = UserModel(
                                        element['name'],
                                        element['email'],
                                        element['ra'],
                                        element['compromissos']);

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => HomePage(
                                                user: user,
                                              )),
                                    );
                                  }
                                }
                              });
                              if (found == false) {
                                dialog();
                              }
                            }
                          },
                          child: Text(
                            "Entrar",
                            style: AppFonts.robotobold20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Esqueceu a senha?",
                            style: AppFonts.robotosemibold14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                AppImages.logoUnicesumar,
                scale: 3,
              )
            ],
          ),
        ),
      ),
    );
  }

  dynamic dialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: AppColors.shadowCyan,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          'Erro',
          style: AppFonts.robotobold20,
        ),
        content: const Text(
          'RA e/ou senha incorretos',
          style: AppFonts.robotoregular20,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Center(
              child: const Text(
                'Fechar',
                style: AppFonts.robotobold14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
