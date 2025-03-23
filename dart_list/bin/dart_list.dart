void main(List<String> arguments) {
  List<int> numbers = [1, 2, 3, 4, 5, 3, 1];
  
  Set<int> uniqueNumbers = numbers.toSet();

  uniqueNumbers.forEach((number) => print(number));
}