import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../controller/controller.dart';
import '../preset/popUp.dart';

import 'package:flutter/material.dart';
import '../model/style.dart';
import '../preset/TextField.dart';
import '../model/model.dart';

class Imc extends StatefulWidget {
  @override
  ImcState createState() => ImcState();
}

class ImcState extends State<Imc> {
  static TextEditingController valor = TextEditingController();

  Widget pagina() {
    return ListView(
      children: <Widget>[
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () async {
              String moeda = await PopUp.mudarMoeda(context, Tipo.moedaDe);
              setState(() {
                Model.moedaDe = moeda;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Model.moedaDe,
                  style: TextStyle(color: corPrimaria, fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                Icon(Icons.change_circle_outlined)
              ],
            )),
        TextFields.input(
          text: "${Model.moedas[Model.moedaDe]['simbolo']}00.00",
          controller: valor,
        ),
        ElevatedButton(onPressed: () => setState(() {}), child: Text("converter",style: TextStyle(fontSize: 20),)),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () async {
              String moeda = await PopUp.mudarMoeda(context, Tipo.moedaDe);
              setState(() {
                Model.moedaPara = moeda;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Model.moedaPara,
                  style: TextStyle(color: corPrimaria, fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                Icon(Icons.change_circle_outlined)
              ],
            )),
        Text(
          MoedaContr.converter(valor.text),
          style: TextStyle(color: corFundo, fontSize: 25.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fundo.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(100, 0, 0, 0)),
          child: pagina(),
        ),
      ),
    ));
  }
}
