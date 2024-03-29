import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class EditPlayer extends StatelessWidget {
  const EditPlayer({Key? key}) : super(key: key);

  Widget _inputText({required String hintText, Function(String?)? onSaved}) {
    return TextFormField(
      onSaved: onSaved,
      //TODO Fazer o validator: ,
      decoration: SixthSenseStyles.inputDecoration(hintText),
      cursorColor: const Color(0xFF9F150D),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9F150D),
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
        physics: const BouncingScrollPhysics(),
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
                      height: 216,
                      width: 128,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Player.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: const Color(0xFF9F150D), width: 2),
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //-> Nome
                          _inputText(hintText: "Nome"),
                          const SizedBox(height: 8),
                          //-> Peso e Altura
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(flex: 2, child: _inputText(hintText: "Peso")),
                              const SizedBox(width: 8),
                              Expanded(flex: 3, child: _inputText(hintText: "Altura")),
                            ],
                          ),
                          //-> Numero e Tipo Sangue
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(flex: 2, child: _inputText(hintText: "#")),
                              const SizedBox(width: 8),
                              Expanded(flex: 3, child: _inputText(hintText: "Tipo Sangue")),
                            ],
                          ),
                          const SizedBox(height: 8),
                          //-> Posição
                          _inputText(hintText: "Posição"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //-> TextsForms
              const SizedBox(height: 8),
              //-> Codigo do Sensor e botão Conectar
              Row(
                children: [
                  Expanded(
                    child: _inputText(
                      hintText: "Código do sensor",
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
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
              const SizedBox(height: 8),
              _inputText(hintText: "Email"),
              const SizedBox(height: 8),
              _inputText(hintText: "Telefone"),
              const SizedBox(height: 16),
              //-> Contato de Emergência
              const Text(
                "CONTATO DE EMERGÊNCIA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 8),
              _inputText(hintText: "Nome"),
              const SizedBox(height: 8),
              _inputText(hintText: "Telefone"),
              const SizedBox(height: 8),
              //-> Botao salvar
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: BasicButtonStyle(
                    elevation: 0,
                    backgroundColor: const Color(0xFF0A7C00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
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
        ),
      ),
    );
  }
}
