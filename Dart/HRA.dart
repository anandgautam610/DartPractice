import 'dart:io';
void main(List<String> args) {
  // ignore: unused_local_variable
  double? tx;
  double? bs = double.parse(stdin.readLineSync()!);
  double? hra = bs*0.5;
  double? da = bs*0.2;
  double? ta = bs*0.3;
  double? ma = bs*0.25;
  double? pf = bs*0.05;
  double? gs = 12*(bs+hra+da+ta+ma);
  if(gs>500000){
       tx = gs*0.1;
  }
  else if (gs>700000) {
    tx = gs*0.2;
  }
  else if(gs>900000){
    tx = gs*0.3;
  }
  else{
    tx=0;
  }
  double? ns = gs-(12*pf)-tx;
  print(ns);
}