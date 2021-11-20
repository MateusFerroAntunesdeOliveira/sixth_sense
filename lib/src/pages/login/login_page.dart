import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  showAlertDialog(BuildContext context) {
    Widget email = TextButton(
      child: const Text(
        "phcs.971@gmail.com",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFCA7613),
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
      ),
      onPressed: () {
        //TODO Enviar email
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        "OK",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF9F150D),
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      //TODO Falta as bordas
      title: const Center(
        child: Text(
          "SIXTH SENSE",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      content: const Text(
        "Este aplicativo faz parte de um projeto que inclui a utilização de sensores para detecção de concussões no Futebol Americano.\n\nCaso tenha alguma dúvida, está interessado em comprar o sensor, ou gostaria de relatar algum problema, por favor entre em contato com o email abaixo.",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Center(
          child: Column(
            children: [
              email,
              continueButton,
            ],
          ),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF9F150D),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-> Bem vindo e 'ajuda'
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Bem-vindo(a) ao",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            fontFamily: 'Montserrat'),
                      ),
                      IconButton(
                        icon: const Icon(Icons.help_outline_outlined),
                        color: Colors.white,
                        onPressed: () => showAlertDialog(context),
                      ),
                    ],
                  ),
                ),
                //-> Sixth Sense
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Sixth Sense",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                // Logo
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Container(
                    height: 380,
                    color: Colors.white.withOpacity(0.3),
                    child: const Center(
                      child: Text("LOGO E DESENHO"),
                    ),
                  ),
                ),
                //-> Apple
                Expanded(
                  child: ElevatedButton(
                    style: BasicButtonStyle(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.light_mode_rounded, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Continuar com Apple",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                  ),
                ),
                const SizedBox(height: 8),
                //-> Google
                Expanded(
                  child: ElevatedButton(
                    style: BasicButtonStyle(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.ac_unit, color: Colors.black),
                        SizedBox(width: 8),
                        Text(
                          "Continuar com Google",
                          style: TextStyle(
                            color: Color(0xFF2E324A),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                  ),
                ),
                const SizedBox(height: 8),
                //-> Facebook
                Expanded(
                  child: ElevatedButton(
                    style: BasicButtonStyle(
                      elevation: 0,
                      backgroundColor: const Color(0xFF3769C9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.account_circle, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Continuar com Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
