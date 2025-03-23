import 'dart:io';

void main(List<String> arguments) {
  print("Masukkan bilangan:");
  String? input = stdin.readLineSync() ?? "0";
  int number = int.parse(input);
  print(get_biner(number));
}

String get_biner(int number) {
  if (number == 0) {
    return "0";
  } else if(number == 1) {
    return "1";
  } else {
    int sisa = number % 2;
    int hasil = number ~/ 2;
    return get_biner(hasil) + sisa.toString();
  }
}