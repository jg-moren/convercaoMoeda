import '../model/model.dart';

class MoedaContr {
  static String money(String value,String moeda){
    value = (int.parse(value)).toString();
    while(value.length<4)value = "0$value";
    value = "${Model.moedas[moeda]['simbolo']}${value.substring(0,value.length-2)}.${value.substring(value.length-2)}";
    return value;
  }

  static String converter(String value){
    if(value.isEmpty)return"";
    double _value = double.parse(value.replaceAll(Model.simbolos,""))/100;
    _value = _value * Model.moedas[Model.moedaDe]['value'];
    _value = _value / Model.moedas[Model.moedaPara]['value'];
    value = "${(_value*100).toInt()}";
    // value = "${Model.moedas[Model.moedaPara]['simbolo']}${value.substring(0,value.length-2)}.${value.substring(value.length-2)}";

    return MoedaContr.money(value, Model.moedaPara);

  }

}