import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/model.dart';
import '../controller/controller.dart';
import '../model/style.dart';
import '../controller/controller.dart';
class TextFields {



  static TextInputFormatter formato() {
    return TextInputFormatter.withFunction((oldValue, newValue)=>
      newValue = TextEditingValue(
          text: MoedaContr.money(newValue.text,Model.moedaDe),
          selection: TextSelection.fromPosition(TextPosition(offset: MoedaContr.money(newValue.text,Model.moedaDe).length))
      )
    );
  }

  static Widget input({required String text, TextEditingController? controller}) {
    return TextFormField(

      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        formato(),
      ],
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 5.0),
          ),
          //labelText: text,1
          hintText: text,
          labelStyle: TextStyle(color: corPrimaria)),
      textAlign: TextAlign.end,
      controller: controller ?? null,
      style: TextStyle(color: corFundo, fontSize: 25.0),
    );
  }
}
