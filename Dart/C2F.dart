import 'dart:io';
void main(List<String> args) {
  print("Enter temperature in celsius");
  double? temp = double.parse(stdin.readLineSync()!);
  double? F_temp = (9*temp)/5 +32;
  print("Temperature in degree celsius is $F_temp");
}