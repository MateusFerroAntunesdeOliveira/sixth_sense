// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class EditPlayer extends StatelessWidget {
  const EditPlayer({Key? key}) : super(key: key);

  Widget _inputText({required String hintText, Function(String?)? onSaved}) {
    return TextFormField(
      onSaved: onSaved,
      //TODO validator: ,
      decoration: SixthSenseStyles.inputDecoration(hintText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Editar Jogador",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              children: [
                //-> Imagem e alguns TextsForms
                Row(
                  children: [
                    //-> Imagem
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 228,
                        width: 128,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/Player.png"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Color(0xFF9F150D), width: 2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    //-> TextsForms
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            //-> Nome
                            _inputText(hintText: "Nome"),
                            SizedBox(height: 10),
                            //-> Peso e Altura
                            _inputText(hintText: "Peso"),
                            SizedBox(height: 10),
                            //-> Numero e Tipo de Sangue
                            _inputText(hintText: "Numero"),
                            SizedBox(height: 10),
                            //-> Posição
                            _inputText(hintText: "Posição"),
                            //TODO Questão das rows com outros textsForms...
                            // Expanded(flex: 1, child: _inputText(hintText: "Telefone")),
                            // Row(
                            //   children: [
                            //     _inputText(hintText: "Nome"),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //-> TextsForms
                SizedBox(height: 12),
                //-> Codigo do Sensor e botão Conectar
                Row(
                  children: [
                    Expanded(
                      child: _inputText(
                        hintText: "Código do sensor",
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton(
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
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      onPressed: () {
                        //TODO OnPressed do botão Conectar
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8),
                _inputText(hintText: "Email"),
                SizedBox(height: 8),
                _inputText(hintText: "Telefone"),
                SizedBox(height: 8),
                //-> Contato de Emergência
                Row(
                  children: const [
                    Text(
                      "CONTATO DE EMERGÊNCIA",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                _inputText(hintText: "Nome"),
                SizedBox(height: 8),
                _inputText(hintText: "Telefone"),
                SizedBox(height: 8),
                //-> Botao salvar
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: BasicButtonStyle(
                          elevation: 0,
                          backgroundColor: Color(0xFF0A7C00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          "SALVAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onPressed: () {
                          //TODO OnPressed do botão Salvar
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
