import 'dart:io';

void main() {
  // Solicitar ao usuário o primeiro número
  stdout.write("Digite o primeiro número: ");
  double numero1 = double.parse(stdin.readLineSync()!);

  // Solicitar ao usuário a operação desejada
  stdout.write("Digite a operação (+, -, *, /): ");
  String operacao = stdin.readLineSync()!;

  // Solicitar ao usuário o segundo número
  stdout.write("Digite o segundo número: ");
  double numero2 = double.parse(stdin.readLineSync()!);

  // Calcular o resultado com base na operação inserida
  double resultado = calcular(numero1, operacao, numero2);

  // Exibir o resultado
  print("Resultado: $resultado");
}

// Função para calcular o resultado com base na operação
double calcular(double a, String operacao, double b) {
  if (operacao == "+") {
    return a + b;
  } else if (operacao == "-") {
    return a - b;
  } else if (operacao == "*") {
    return a * b;
  } else if (operacao == "/") {
    if (b != 0) {
      return a / b;
    } else {
      print("Erro: Divisão por zero!");
      return double.nan; // Retorna um valor inválido
    }
  } else {
    print("Operação inválida!");
    return double.nan; // Retorna um valor inválido
  }
}