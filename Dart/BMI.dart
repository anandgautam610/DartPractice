import 'dart:io';

void main(List<String> args) {
  print("Enter mass of a person in kg");
  double? mass = double.parse(stdin.readLineSync()!);
  double? p_mass = 2.2046*mass;
  print("Enter height of a person in inches");
  double? height = double.parse(stdin.readLineSync()!);
  double? BMI = (703 * p_mass)/(height*height);
  print("BMI of a person is $BMI");
}