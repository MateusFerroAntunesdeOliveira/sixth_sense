import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: () {
        //TODO OnPressed Enviar email
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      actions: [
        Center(
          child: Column(
            children: [email, continueButton],
          )
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
    return Scaffold(
      backgroundColor: const Color(0xFF9F150D),
      body: SafeArea(
        child: CustomPaint(
          painter: BackgroundLogo(),
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
                  child: SizedBox(
                    height: 380,
                    child: Center(
                      child: Image.asset("assets/images/Logo_2.png"),
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
                        Icon(FontAwesomeIcons.apple),
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
                      Navigator.of(context).pushReplacementNamed('/HomePage');
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
                        Icon(FontAwesomeIcons.google, color: Color(0xFFdd4b39)),
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
                      Navigator.of(context).pushReplacementNamed('/HomePage');
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
                        Icon(FontAwesomeIcons.facebookSquare),
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
                      Navigator.of(context).pushReplacementNamed('/HomePage');
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

class BackgroundLogo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xFFCA7613);

    Path path = Path()
      ..moveTo(0, size.height * 0.385)
      ..cubicTo(size.width * 0.1, size.height * 0.315, size.width, size.height * 0.275, size.width,
          size.height * 0.215)
      ..lineTo(size.width, size.height * 0.485)
      ..cubicTo(size.width * 0.9, size.height * 0.55, size.width * 0.05, size.height * 0.595, 0,
          size.height * 0.665);

    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
