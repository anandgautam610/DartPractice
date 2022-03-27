import 'dart:io';
import 'dart:math';
void main(List<String> args) {

  print("Enter the value of n");
  int? n = int.parse(stdin.readLineSync()!);
  print("What you want to perform");
  print(" 1. Reverse a Number\n 2. Palindrome a Number\n 3. Prime Number\n 4. Armstrong Number\n 5. Sum of Digit\n 6. Sum of Odd and Even Digit\n");
  String? choice = stdin.readLineSync();


// Reverse Function
 int Reverse(int n){
   int temp=n ,rev=0,r;
   while(temp!=0){
     r = temp%10;
     rev =rev*10+r;
     temp=temp~/10  ;
   }
   return rev;
 }

bool isPrimeNo(int n){
  for (var i = 2; i <= n / i; ++i) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

int isArmStrong(int n){
  int temp,digits =0, last = 0, sum = 0;
  temp = n;
  while(temp>0){
    temp = temp~/10;
    digits++;
  }
  temp = n;
  while(temp>0){
    last = temp % 10;
    sum = sum + pow(last, digits) as int;
    temp = temp~/10;   
  }
  return sum;
}

int SumofDigit(int n){
  int sum=0;
  while(n!=0){
    sum = sum + n%10;
    n = n~/10;
  }
  return sum;
}

int SumOfEven(int n){
  int temp = n,r,SumOfEven=0;
  while(temp!=0){
    r = temp%10;
    if(r%2==0){
      SumOfEven = SumOfEven + r;
    }
    temp =temp~/10;
  }
  return SumOfEven;
}

int SumOFOdd(int n){
  int temp = n,r,SumOfOdd=0;
  while(temp!=0){
    r = temp%10;
    if(temp%2!=0){
      SumOfOdd += r;
    }
    temp =temp~/10;
  }
  return SumOfOdd;
}

 //Calling Area
  switch (choice) {
    case "1":
    print(Reverse(n));
      break;
    case "2":
    int pal = Reverse(n);
    if(pal ==n){
    print("$n is Palindrome Number.");
  }
  else{
    print("$n is not palindrome Number.");
  }
    break;
  case "3":
  if (isPrimeNo(n)) {
    print('$n is a prime number.');
  } else {
    print('$n is not a prime number.');
  }
  break;
  case "4":
  int arm = isArmStrong(n);
  if(n == arm){
    print("$n is Armstrong Number.");
  }else{
    print("$n is not Armstrong Number.");
  }
  break;
  case "5":
  print(SumofDigit(n));
  break;
  case "6":
  print(SumOfEven(n));
  print(SumOFOdd(n));
  break;
    default:
    print("Out of option");
  } 
}