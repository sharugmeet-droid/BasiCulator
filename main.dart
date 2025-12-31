import 'dart:io';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    return a / b;
  }

  double modulus(double a, double b) => a % b;

  bool greaterThan(double a, double b) => a > b;
  bool lessThan(double a, double b) => a < b;
  bool equalTo(double a, double b) => a == b;
}

void main() {
  var calc = Calculator();

  print('Welcome to BasiCulator!');
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('\nArithmetic Operations:');
  print('${num1} + ${num2} = ${calc.add(num1, num2)}');
  print('${num1} - ${num2} = ${calc.subtract(num1, num2)}');
  print('${num1} * ${num2} = ${calc.multiply(num1, num2)}');
  try {
    print('${num1} / ${num2} = ${calc.divide(num1, num2)}');
  } catch (e) {
    print(e);
  }
  print('${num1} % ${num2} = ${calc.modulus(num1, num2)}');

  print('\nComparison Operations:');
  print('${num1} > ${num2} : ${calc.greaterThan(num1, num2)}');
  print('${num1} < ${num2} : ${calc.lessThan(num1, num2)}');
  print('${num1} == ${num2} : ${calc.equalTo(num1, num2)}');
}
