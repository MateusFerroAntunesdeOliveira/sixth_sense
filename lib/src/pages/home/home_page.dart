// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        actions: const [
          Icon(Icons.help_outline_outlined, size: 24),
          SizedBox(width: 16),
        ],
      ),
      body: _gridView(),
    );
  }
}
