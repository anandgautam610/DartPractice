import 'dart:io';
void main(List<String> args) {
  print("Enter temperature in Farenheit");
  double? temp = double.parse(stdin.readLineSync()!);
  double? C_temp = (temp-32)*0.5556;
  print("Temperature in degree celsius is $C_temp");
}