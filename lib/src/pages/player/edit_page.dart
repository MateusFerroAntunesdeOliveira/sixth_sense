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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: "Voltar",
          onPressed: () { Navigator.of(context).pop(); },
        ),
        backgroundColor: const Color(0xFF9F150D),
        toolbarHeight: 56,
        centerTitle: true,
        title: const Text(
          "Editar Jogador",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            //-> Imagem e alguns TextsForms
            Row(
              children: [
                //-> Imagem
                Container(
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
                //-> TextsForms
                Column(
                  children: [
                    //-> Nome
                    //-> Peso e Altura
                    Row(
                      children: const [],
                    ),
                    //-> Numero e Tipo de Sangue
                    Row(
                      children: const [],
                    ),
                    //-> Posição
                  ],
                ),
              ],
            ),
            //-> TextsForms
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _inputText(
                    hintText: "Código do sensor",
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  width: 84,
                  height: 40,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 8),
            _inputText(hintText: "Email"),
            SizedBox(height: 8),
            _inputText(hintText: "Telefone"),
            SizedBox(height: 8),
            Row(
              children: const [
                Text(
                  "CONTATO DE EMERGÊNCIA",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 8),
            _inputText(hintText: "Nome"),
            SizedBox(height: 8),
            _inputText(hintText: "Telefone"),
            SizedBox(height: 8),
            //-> Botao salvar
          ],
        ),
      ),
    );
  }
}
