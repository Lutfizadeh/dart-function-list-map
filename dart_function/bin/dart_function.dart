void main(List<String> arguments) {
  int number1 = 10;
  int number2 = 20;

  int Function(int, int) myFunc = getMathFunc();

  var result = doMathOperator(number1, number2, (num1, num2) => num1 + num2);

  printNumber(result);
}

int add(int number1, int number2) => number1 + number2;

void printNumber(int number) => print('The number is $number');

int doMathOperator(int number1, int number2, int Function(int n1, int n2) operator) {
  return operator(number1, number2);
}

int Function(int, int) getMathFunc() {
  return add;
}