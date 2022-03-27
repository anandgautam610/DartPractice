import 'dart:io';
void main(List<String> args) {
  print("Enter amount to be borrow");
  double? amt = double.parse(stdin.readLineSync()!);
  print("Enter the total time duration in months");
  int? time = int.parse(stdin.readLineSync()!);
  print("Enter the total interest for total time duration");
  double? intrst = double.parse(stdin.readLineSync()!);
  double? p_amt = amt/intrst;
  double? i1 = time/intrst;
  double? p_int = amt* (i1/100);
  print("EMI is ${p_amt + p_int}");
}