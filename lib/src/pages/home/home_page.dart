// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  showAlertDialog(BuildContext context) {
    Widget email = TextButton(
      child: Text(
        "phcs.971@gmail.com",
        style: TextStyle(fontSize: 14, color: Color(0xFFCA7613), fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        //TODO Enviar email
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(fontSize: 14, color: Color(0xFF9F150D), fontWeight: FontWeight.w700),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      //TODO Falta as bordas
      title: Center(
        child: Text(
          "SIXTH SENSE",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      content: Text(
        "Este aplicativo faz parte de um projeto que inclui a utilização de sensores para detecção de concussões no Futebol Americano.\n\nCaso tenha alguma dúvida, está interessado em comprar o sensor, ou gostaria de relatar algum problema, por favor entre em contato com o email abaixo.",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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

  Widget _gridView() => GridView.count(
        //TODO Arrumar GridView
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 20,
        children: List.generate(30, (index) {
          return Container(
            height: 150,
            width: 96,
            margin: EdgeInsets.only(top: 12, left: 16, right: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFF9F150D), width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                //-> Imagem e borda
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Player.png"),
                      fit: BoxFit.none,
                    ),
                    border: Border.all(color: Color(0xFF9F150D), width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                //-> Texto Player
                Text(
                  "#25 Jorginho",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2),
                //-> Botoes ON e ALERT
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text("ON", style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500)),
                        Icon(Icons.circle, color: Color(0xFF0A7C00)),
                      ],
                    ),
                    SizedBox(width: 14),
                    Column(
                      children: const [
                        Text("ALERT", style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500)),
                        Icon(Icons.circle_outlined),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9F150D),
        toolbarHeight: 128,
        title: const Text(
          "Sensores\nCadastrados",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pushNamed('/LoginPage'),
          ),
          IconButton(
            icon: const Icon(Icons.help_outline_outlined),
            color: Colors.white,
            onPressed: () => showAlertDialog(context),
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
