import 'dart:io';

void main() {
  print('Digite a primeira nota');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota');
  double nota3 = double.parse(stdin.readLineSync()!);

  print('Digite a quarta nota');
  double nota4 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  print('a Media do aluno é: $media');
  if (media >= 7) {
    print("Aluno Aprovado");
  } else if (media >= 5) {
    print('Aluno em recuperação');
  } else{(media = 0);
  print('Aluno reprovado');
  }
}
