import 'package:flutter/material.dart';

import 'graphic_chart.dart';
import '../../utils/utils.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  Widget _infoText({required String title, required String description}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF828282),
            fontFamily: 'Montserrat',
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: "Voltar",
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color(0xFF9F150D),
        toolbarHeight: 56,
        centerTitle: true,
        title: const Text(
          "Jorginho",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('/PlayerPage/EditPlayer');
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //-> Grafico
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: GraphicChart(
                  animate: true,
                  seriesList: [],
                ),
              ),
              const SizedBox(height: 8),
              //-> Text do Sensor
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Color(0xFF0A7C00),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Sensor: 74-13-4A-7B-D9-7E",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      style: BasicButtonStyle(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Color(0xFFBDBDBD)),
                        ),
                      ),
                      child: const Text(
                        "CONECTAR",
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      onPressed: () {
                        //TODO OnPressed do botão Conectar
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              //-> Foto do Jogador/Sensor
              // Container(
              //   width: double.infinity,
              //   height: 200,
              //   // margin: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage("assets/images/Player.png"),
              //       fit: BoxFit.none,
              //     ),
              //     border: Border.all(color: Color(0xFF9F150D), width: 1),
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.of(context).pushNamed('/PlayerPage/EditPlayer');
              //     },
              //   ),
              // ),
              const SizedBox(height: 8),
              //-> Dados do jogador
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    _infoText(title: "Nome:", description: "Jorginho da Silva"),
                    const SizedBox(height: 8),
                    _infoText(title: "Número:", description: "#25"),
                    const SizedBox(height: 8),
                    _infoText(title: "Posição:", description: "RB"),
                    const SizedBox(height: 8),
                    _infoText(title: "Email:", description: "jorginho@proplayer.com"),
                    const SizedBox(height: 8),
                    _infoText(title: "Telefone:", description: "+55 (41) 98765-4321"),
                    const SizedBox(height: 24),
                    const Divider(thickness: 2),
                    const SizedBox(height: 8),
                    const Text(
                      "INFORMAÇÕES DE SAÚDE",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4F4F4F),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(height: 16),
                    _infoText(title: "Tipo Sanguíneo:", description: "A+"),
                    const SizedBox(height: 8),
                    _infoText(title: "Altura:", description: "1,85 m"),
                    const SizedBox(height: 8),
                    _infoText(title: "Peso:", description: "97,5 kg"),
                    const SizedBox(height: 8),
                    _infoText(
                        title: "Contato de Emergência: ",
                        description: "+55 (41) 98765-4321\n   Jorginho da Silva"),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
