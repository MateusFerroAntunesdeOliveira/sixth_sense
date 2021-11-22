// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  showAlertDialog(BuildContext context) {
    Widget email = TextButton(
      child: Text(
        "phcs.971@gmail.com",
        style: TextStyle(
            fontSize: 14,
            color: Color(0xFFCA7613),
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'),
      ),
      onPressed: () {
        //TODO OnPressed Enviar email
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(
            fontSize: 14,
            color: Color(0xFF9F150D),
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text(
          "SIXTH SENSE",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      content: Text(
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

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget buildPlayerCard(int index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFF9F150D), width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              //-> Imagem e borda
              Container(
                width: 80,
                height: 90,
                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Player.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: const Color(0xFF9F150D), width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              //-> Texto Player
              const Text(
                "#25 Jorginho",
                style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: 'Montserrat'),
              ),
              const SizedBox(height: 2),
              //-> Botoes ON e ALERT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        "ON",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Icon(Icons.circle, color: Color(0xFF0A7C00), size: 20),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Column(
                    children: const [
                      Text(
                        "ALERT",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Icon(Icons.circle_outlined, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );

    Widget _gridView() => GridView.builder(
          itemCount: 50,
          padding: EdgeInsets.all(16),
          itemBuilder: (context, index) => buildPlayerCard(index),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 96 / 144,
            crossAxisSpacing: 20,
            mainAxisSpacing: 12,
          ),
          physics: BouncingScrollPhysics(),
        );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9F150D),
        toolbarHeight: 98,
        bottom: TabBar(
          indicatorColor: Color(0xFFCA7613),
          indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
          indicator: IndicatorCustomTab(),
          controller: controller,
          tabs: const [
            Tab(text: "Ativos"),
            Tab(text: "Desligados"),
            Tab(text: "Todos"),
          ],
        ),
        title: const Text(
          "Sensores\nCadastrados",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline_outlined),
            color: Colors.white,
            onPressed: () => showAlertDialog(context),
          ),
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pushReplacementNamed('/LoginPage'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: _gridView(),
      floatingActionButton: FloatingActionButton(
        tooltip: "Adicionar Jogador",
        child: const Icon(Icons.add, size: 32),
        backgroundColor: Color(0xFF9F150D),
        onPressed: () {
          Navigator.of(context).pushNamed('/PlayerPage');
        },
      ),
    );
  }
}

class IndicatorCustomTab extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CustomIndicator();
  }
}

class CustomIndicator extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size!;
    final x = size.width;
    final y = size.height;
    final paint = Paint().. color = Color(0xFFCA7613);

    Path path = Path()
    ..moveTo(offset.dx, y)
    ..relativeArcToPoint(const Offset(4, -4), radius: const Radius.circular(4))
    ..relativeLineTo(x - 8, 0)
    ..relativeArcToPoint(const Offset(4, 4), radius: const Radius.circular(4))
    ..close();

    canvas.drawPath(path, paint);
  }
}
