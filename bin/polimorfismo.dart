// imports
import 'dart:io';

import 'package:dart_console/dart_console.dart';

// variaveis globais
var console = Console();
String aviaoEscolhido;
int aviaoEscolhidoConvertido;
String perguntaDecolar;
String perguntaPousar;
String perguntaComida;
String companhiaAereaEscrito;
String lugar;
// boeing
String companhiaAereaBoeing;
int companhiaAereaBoeingConvertida;
String interNacional;
String destinoInternacional;
int destinoInternacionalConvertido;

AviaoBoeing boeing = AviaoBoeing(
    companhiaAerea: companhiaAereaEscrito,
    tipoViagem: interNacional,
    lugarViagem: lugar);

// Acrobatico
String companhiaAereaAcrobatico;
String nivelAcrobacia;
int nivelAcrobaciaConvertido;
String corAviao;
int corAviaoConvertida;
AviaoAcrobatico acrobatico =
    AviaoAcrobatico(tipoViagem: interNacional, lugarViagem: lugar);

// classe generica
class Aviao {
// atributos
  String companhiaAerea;
  String tipoViagem;
  String lugarViagem;

// construtor
  Aviao({
    this.companhiaAerea,
    this.tipoViagem,
    this.lugarViagem,
  });

// metodos
  void validaCompanhia() {
    if (companhiaAereaBoeingConvertida == 1) {
      companhiaAereaEscrito = "China Eastern Airlines";
    } else if (companhiaAereaBoeingConvertida == 2) {
      companhiaAereaEscrito = "GOL Airlines";
    } else if (companhiaAereaBoeingConvertida == 3) {
      companhiaAereaEscrito = "flydubai";
    }
  }

  void validaLugar() {
    if (interNacional == "internacional" &&
        destinoInternacionalConvertido == 1) {
      lugar = "New York";
    } else if (interNacional == "internacional" &&
        destinoInternacionalConvertido == 2) {
      lugar = "Londres";
    } else if (interNacional == "internacional" &&
        destinoInternacionalConvertido == 3) {
      lugar = "Sao Francisco";
    }

    if (interNacional == "nacional" && destinoInternacionalConvertido == 1) {
      lugar = "Sao Paulo";
    } else if (interNacional == "nacional" &&
        destinoInternacionalConvertido == 2) {
      lugar = "Rio de Janeiro";
    } else if (interNacional == "nacional" &&
        destinoInternacionalConvertido == 3) {
      lugar = "Fortaleza";
    }
  }

  void acoplarRodas() {
    print("Acoplando rodas!!");
  }

  void decolar() {
    print("Decolando!!,desejo a todos uma otima viagem!!");
  }

  void pousar() {
    print("Pousando!!");
  }

  void darComida() {
    print("Passando com os lanches, quem quiser por favor levante a mao");
  }
}

// classe filha
class AviaoBoeing extends Aviao {
  AviaoBoeing({
    String companhiaAerea,
    String tipoViagem,
    String lugarViagem,
  }) : super(
            companhiaAerea: companhiaAerea,
            tipoViagem: tipoViagem,
            lugarViagem: lugarViagem);

// polifromismo
  @override
  void acoplarRodas() {
    print("Aviao $companhiaAereaEscrito esta acoplando as rodas!!");
  }

  @override
  void decolar() {
    super.decolar();
  }

  @override
  void pousar() {
    super.pousar();
    print(
        "Obrigado pela preferencia em voar com a $companhiaAereaEscrito e ate a proxima!!");
  }

  @override
  void darComida() {
    print(
        "O aviao $companhiaAereaEscrito ira passar dando comida a todos,  peco que aguardem sentados e com o sinto afivelado!!!!");
  }

  @override
  String toString() =>
      " ✈︎: $companhiaAereaEscrito - $interNacional para $lugar";
}

// classe filha
class AviaoAcrobatico extends Aviao {
  AviaoAcrobatico({
    String companhiaAerea,
    String tipoViagem,
    String lugarViagem,
  }) : super(
            companhiaAerea: companhiaAerea,
            tipoViagem: tipoViagem,
            lugarViagem: lugarViagem);

  void nivelAcrobacia(int nivelAcrobacia) {
    switch (nivelAcrobacia) {
      case 1:
        print("Nivel 1: vamos fazer um Looping!");
        break;

      case 2:
        print("Nivel 2: estamos fazendo um Tail Slide!!");
        break;

      case 3:
        print("Nivel 3: bora fazer um Voo Invertido!!!");
        break;

      case 4:
        print("Nivel 4: se prepara vamos fazer um Voo Faca!!!!");
        break;

      case 5:
        print("Nivel 5: UHUUUUUUUUU vamos fazer um Oito Lento!!!!!");
        break;

      default:
        print("Nivel Invalido!");
        break;
    }
  }

  void verificaCor() {
    if (corAviaoConvertida == 1) {
      corAviao = "Vermelho";
    } else if (corAviaoConvertida == 2) {
      corAviao = "Preto";
    } else if (corAviaoConvertida == 3) {
      corAviao = "Branco";
    }
  }

  @override
  void acoplarRodas() {
    print("Este Aviao Nao acopla as rodas");
  }

// polifromismo
  @override
  void decolar() {
    print("Bora brincar no ar, UHUUUUUU!!");
  }

  @override
  void pousar() {
    super.pousar();
    print("Pena que a brincadeira ja acabou!!");
  }

  void acrobacia() {
    print("E la vamos nos, Uhuuuu!!");
    print("Que manobra linda que fizemos *_*");
  }

  @override
  String toString() => " ✈︎: Red Bull - $corAviao";
}

// classe filha
class AviaoAirbus extends Aviao {
  AviaoAirbus({
    String companhiaAerea,
    String tipoViagem,
    String lugarViagem,
  }) : super(
            companhiaAerea: companhiaAerea,
            tipoViagem: tipoViagem,
            lugarViagem: lugarViagem);

// polifromismo
  @override
  void acoplarRodas() {
    print("Aviao Acoplando as rodas!!");
  }

  @override
  void decolar() {
    super.decolar();
    print("Desejo a todos uma boa viagem!");
  }

  @override
  void pousar() {
    super.pousar();
    print(
        "Obrigado pela preferencia em voar com a $companhiaAereaEscrito e ate a proxima!!");
  }

  @override
  void darComida() {
    print(
        "O aviao AirBus ira passar dando comida a todos,  peco que aguardem sentados e com o sinto afivelado!!");
  }

  @override
  String toString() =>
      " ✈︎: $companhiaAereaEscrito - $interNacional para $lugar";
}

// classe filha
class AviaoEmbraer extends Aviao {
  AviaoEmbraer({
    String companhiaAerea,
    String tipoViagem,
    String lugarViagem,
  }) : super(
            companhiaAerea: companhiaAerea,
            tipoViagem: tipoViagem,
            lugarViagem: lugarViagem);

// polifromismo
  @override
  void acoplarRodas() {
    print("Aviao Acoplando as rodas!!");
  }

  @override
  void decolar() {
    super.decolar();
    print("Desejo a todos uma boa viagem!");
  }

  @override
  void pousar() {
    super.pousar();
    print(
        "Obrigado pela preferencia em voar com a $companhiaAereaEscrito e ate a proxima!!");
  }

  @override
  void darComida() {
    print(
        "O aviao Embraer ira passar dando coxinha e feijoada a todos, peco que aguardem sentados e com o sinto afivelado!!");
  }

  @override
  String toString() =>
      " ✈︎: $companhiaAereaEscrito - $interNacional para $lugar";
}

// --------------------------------------------------------------------------------------------------------------------------------
void main() {
// apresentacao
  print(
      "Aqui comecara a sua jornada como um exelente piloto!! UHUUUU VAMOS DELOCOLAR PAPAE!!!");

// escolhaAviao(aviaoEscolhidoConvertido);

  while (aviaoEscolhidoConvertido == null) {
    print(
        "Temos estes modelos de avioes em nossa garagem, (1) Boeing, (2) Acrobatico, (3) AirBus, (4) Embraer,Qual vai ser o aviao voce quer pilotar? ");
    aviaoEscolhido = stdin.readLineSync();
    aviaoEscolhidoConvertido = int.tryParse(aviaoEscolhido);
    console.clearScreen();
    if (aviaoEscolhidoConvertido == null ||
        aviaoEscolhidoConvertido > 4 ||
        aviaoEscolhidoConvertido < 1) {
      print("Nao temos esse aviao, porfavor colocar um valor valido!!");
      aviaoEscolhidoConvertido = null;
    }
    //  else {
    //     // verificar aqui
    //     aviaoEscolhidoConvertido = aviaoEscolhidoConvertido;
    //   }

// se for BOEING
    if (aviaoEscolhidoConvertido == 1) {
      print("Otima escolha, - - ✈︎ _ _ _ _ ,seu aviao esta chegando!!");
      // companhia aerea
      while (companhiaAereaBoeingConvertida == null) {
        print(
            "Qual sera a companhia aerea (1) China Eastern Airlines, (2) GOL Airlines ,(3) flydubai? ");
        companhiaAereaBoeing = stdin.readLineSync();
        companhiaAereaBoeingConvertida = int.tryParse(companhiaAereaBoeing);
        console.clearScreen();
        if (companhiaAereaBoeingConvertida == null ||
            companhiaAereaBoeingConvertida > 3 ||
            companhiaAereaBoeingConvertida < 1) {
          print(
              "Infelizmente nao trabalhamos com esta companhia aerea, escolha uma valida...");
          companhiaAereaBoeingConvertida = null;
        }
        boeing.validaCompanhia();
      }

// se o voo for internacional ou nacional o destino
      while (interNacional == null) {
        print("iremos fazer uma viagem internacional ou nacional? ");
        interNacional = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (interNacional == "internacional" || interNacional == "nacional") {
          print("boa viagem");
        } else {
          print("Porfavor colocar um valor valido");
          interNacional = null;
        }
      }
      // mostra a cidade devidamente
      while (destinoInternacionalConvertido == null) {
        if (interNacional == "internacional") {
          print(
              "Para qual destino voce ira (1) New York, (2) Londres, (3) Sao Francisco");
          destinoInternacional = stdin.readLineSync();
          destinoInternacionalConvertido = int.tryParse(destinoInternacional);
          console.clearScreen();
          if (destinoInternacionalConvertido == null ||
              destinoInternacionalConvertido > 3 ||
              destinoInternacionalConvertido < 1) {
            print(
                "Nao podemos ir para este local, porfavor escolher um valido...");
            destinoInternacionalConvertido = null;
          }
        } else if (interNacional == "nacional") {
          print(
              "Para qual destino voce ira (1) Sao Paulo, (2) Rio de Janeiro, (3) Fortaleza");
          destinoInternacional = stdin.readLineSync();
          destinoInternacionalConvertido = int.tryParse(destinoInternacional);
          console.clearScreen();
          if (destinoInternacionalConvertido == null ||
              destinoInternacionalConvertido > 3 ||
              destinoInternacionalConvertido < 1) {
            print(
                "Nao podemos ir para este local, porfavor escolher um valido...");
            destinoInternacionalConvertido = null;
          }
        }
        boeing.validaLugar();
        // TODO colocar um print, parabens iremos para cidade escolhida, fazer uma condicao
      }
// decolar
      print("Aqui esta o seu aviao");
      print(boeing.toString());

// apartir daqui fazer que nem o tmagoshi

      while (perguntaDecolar == null) {
        print("todos a bordo ? podemos decolar? (s/n)");
        perguntaDecolar = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (perguntaDecolar == "s") {
          boeing.decolar();
          boeing.acoplarRodas();
          // verificar qual destino e dependendo mudar as horas
          print("estimativa desse voo e de 8 horas");
        } else if (perguntaDecolar == "n") {
          print("Ok seu aviao esta te esperando para decolar na garagem....");
          perguntaDecolar = null;
        } else {
          perguntaDecolar = null;
        }
      }
      // se for sim, usar metodo decolar e falar estimativa de tempo do voo
      // se for nao terminar o jogo e avisar q o aviao estara pronto para qnd ele quizer decolar
      // feito

// dar comida
      while (perguntaComida == null) {
        print("gostaria de dar comida para os passageiros? (s/n)");
        perguntaComida = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (perguntaComida == "s") {
          boeing.darComida();
          print("espero que gostem!!");
        } else if (perguntaComida == "n") {
          print("ok os passageiros que se fodam...");
          break;
        } else {
          perguntaComida = null;
        }
      }
// pousar
      while (perguntaPousar == null) {
        print("Iremos pousar? (s/n)");
        perguntaPousar = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (perguntaPousar == "s") {
          boeing.pousar();
        } else if (perguntaPousar == "n") {
          print("Ok seu aviao mantem voo...");
          perguntaPousar = null;
        } else {
          print("Valor invalido!!!");
          perguntaPousar = null;
        }
      }
      print(boeing);

// if do boeing
    }

// se for Acrobatico

    if (aviaoEscolhidoConvertido == 2) {
      // verificacao se o jogadar nao aceitar o Red Bull ele nao podera escolher novamente o acrobatico
      if (companhiaAereaAcrobatico == "n") {
        print("Voce nao pode escolher denovo este aviao !!");
        aviaoEscolhidoConvertido = null;
      } else {
        print("Otima escolha, - - ✈︎ _ _ _ _ ,seu aviao esta chegando!!");
      }
      // companhia aerea
      while (companhiaAereaAcrobatico == null) {
        print(
            "Nos no momento so trabalhamos com a empresa Red Bull, Pode ser? (s/n)");
        companhiaAereaAcrobatico = stdin.readLineSync();
        console.clearScreen();
        if (companhiaAereaAcrobatico == "s") {
          print("Uhuuuuu vamos se divertir muito!!!");
        } else if (companhiaAereaAcrobatico == "n") {
          print("MUITO BEM, ENT POFAVOR ESCOLHA UM OUTRO AVIAO!!!");
          aviaoEscolhidoConvertido = null;
        } else {
          print("Colocar um valor valido!!!");
          companhiaAereaAcrobatico = null;
        }
      }
    }

// perguntar cor
    while (companhiaAereaAcrobatico == "s") {
      // if(companhiaAereaAcrobatico == "s"){
      while (corAviaoConvertida == null) {
        print(
            "Qual sera a cor do seu aviao, temos disponivel (1) Vermelho, (2) Preto e (3) Branco? ");
        corAviao = stdin.readLineSync();
        corAviaoConvertida = int.tryParse(corAviao);
        if (corAviaoConvertida == null ||
            corAviaoConvertida < 1 ||
            corAviaoConvertida > 3) {
          print("Cor Invalida....");
          corAviaoConvertida = null;
        } else {
          acrobatico.verificaCor();
        }
      }
      print("Aqui esta o seu aviao");
      print(acrobatico);

// decolar
      while (perguntaDecolar == null) {
        print("voce esta pronto para esta aventura? podemos decolar? (s/n)");
        perguntaDecolar = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (perguntaDecolar == "s") {
          acrobatico.decolar();
          print("Lets go!!!!");
        } else if (perguntaDecolar == "n") {
          print("Ok seu aviao esta te esperando para decolar na garagem....");
          perguntaDecolar = null;
        } else {
          perguntaDecolar = null;
        }
      }
      // se for sim, usar metodo decolar e falar estimativa de tempo do voo
      // se for nao terminar o jogo e avisar q o aviao estara pronto para qnd ele quizer decolar
      // feito

// nivel de acrobacia
      while (nivelAcrobaciaConvertido == null) {
        print("Qual sera o nivel da acrobacia? 1 a 5");
        nivelAcrobacia = stdin.readLineSync();
        nivelAcrobaciaConvertido = int.tryParse(nivelAcrobacia);
        if (nivelAcrobaciaConvertido == null ||
            nivelAcrobaciaConvertido < 1 ||
            nivelAcrobaciaConvertido > 5) {
          print("Nivel Invalido!");
          nivelAcrobaciaConvertido = null;
        } else {
          acrobatico.nivelAcrobacia(nivelAcrobaciaConvertido);
        }
      }

// pousar
      while (perguntaPousar == null) {
        print("Iremos pousar? (s/n)");
        perguntaPousar = stdin.readLineSync().toLowerCase();
        console.clearScreen();
        if (perguntaPousar == "s") {
          acrobatico.pousar();
        } else if (perguntaPousar == "n") {
          print("Ok seu aviao mantem voo...");
          perguntaPousar = null;
        } else {
          print("Valor invalido!!!");
          perguntaPousar = null;
        }
      }
      print(acrobatico);
      break;
    // }else{
    // break;
    // }
    }
// companhiaAereaAcrobatico = null;
// if do acrobatico
  }

// TODO fazer o mesmo do boeing nos outros
}
