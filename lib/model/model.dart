
class Model{
  static String moedaDe = "dolar";
  static String moedaPara = "real";

  static Map<String,dynamic> moedas={
    "real":{'simbolo':'R\$','value':1},
    "dolar":{'simbolo':'\$','value':5.30},
    "peso":{'simbolo':'\$','value':0.054},
    "Iene":{'simbolo':'¥','value':0.048},
    "Euro":{'simbolo':'€','value':6.23},
    "Libra":{'simbolo':'£','value':7.28},


  };
  static RegExp simbolos = RegExp(r"[R¥€£$.]");
}
