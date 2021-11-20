// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

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
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red.withOpacity(0.5),
              child: const Center(
                child: Text(
                  "GRÁFICO",
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Color(0xFF0A7C00),
                ),
                SizedBox(width: 8),
                Text(
                  "Sensor: 74-13-4A-7B-D9-7E",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: BasicButtonStyle(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Color(0xFFBDBDBD)),
                      ),
                    ),
                    child: Text(
                      "CONECTAR",
                      style: TextStyle(color: Color(0xFFBDBDBD), fontSize: 16),
                    ),
                    onPressed: () {
                      //TODO OnPressed do botão Conectar
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
