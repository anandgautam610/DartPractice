import 'dart:io';
void main(List<String> args) {
 var a1 = ['p','i','n'];
 var a2 = ['n','i','p'];
  int n1 = a1.length; 
  int n2 = a2.length;
   
// Function Area
bool CheckAnagram(var a1, var a2){
  if(n1!=n2){
    return false;
  }
  a1.sort();
  a2.sort();
  for (int i = 0; i < n1; i++){
            if (a1[i] != a2[i])
                return false;
  }
        return true;
    }

    // Calling Area

    if(CheckAnagram(a1, a2) == true){
      print("Two Strings are Anagram");
    }
    else{
      print("Two Strings are not Anagram");
    }
    // print(a1.runtimeType);
}


