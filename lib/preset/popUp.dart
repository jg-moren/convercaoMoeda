import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/model.dart';
import '../model/style.dart';

enum Tipo{moedaDe,moedaPara}

class PopUp {
  static Future<String> mudarMoeda(context,Tipo tipo) async {
    String moeda = "real";
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 200, horizontal: 50),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  color: corFundo,
                  child: ListView(
                    children: [
                      for (var key in Model.moedas.keys)
                        Container(
                            child: TextButton(
                            onPressed: () {
                              moeda = key;
                              Navigator.pop(context);
                            },
                            child: Text(key,
                                style: TextStyle(
                                  color: corPrimaria,
                                  fontSize: 30,
                                )),
                        ))
                    ],
                  ))),
        );
      },
    );

    return moeda;
  }
}
