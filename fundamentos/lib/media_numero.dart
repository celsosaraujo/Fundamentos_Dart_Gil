import 'dart:io';

void main() {
  // final notas = <double>[];
  final ordinal = ["primeira", "segunda", "terceira", "quarta"];
  var contador = 1;
  double nota = 0.0;
  double media = 0.0;

  while (contador <= 4) {
    print('Digite a ${ordinal[contador - 1]} nota');
    try {
      nota = double.parse(stdin.readLineSync()!);
      // notas.add(nota);
      if(nota < 0.0 || nota > 10)
        throw Exception("Número errado");
        
      media += nota;
      contador++;

    } catch (e) {
      print("Digite uma nota válida");
    }
  }

  // print('Digite a primeira nota');
  // double nota1 = double.parse(stdin.readLineSync()!);

  // print('Digite a segunda nota');
  // double nota2 = double.parse(stdin.readLineSync()!);

  // print('Digite a terceira nota');
  // double nota3 = double.parse(stdin.readLineSync()!);

  // print('Digite a quarta nota');
  // double nota4 = double.parse(stdin.readLineSync()!);

  // double media = (nota1 + nota2 + nota3 + nota4) / 4;
  media = media / 4;

  print('a Media do aluno é: $media');
  if (media >= 7) {
    print("Aluno Aprovado");
  } else if (media >= 5) {
    print('Aluno em recuperação');
  } else {
    // (media = 0);
    print('Aluno reprovado');
  }
}
