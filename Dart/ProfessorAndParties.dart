
void main(List<String> args) {
  var a = [1,2,3,4];
  a.sort();
   Party(){
    for (int i=1; i<a.length; i++) {
      if (a[i-1] == a[i]) {
         return true;
      }
      else
      return false;
   }  
  }
if(Party()==true){
  print("Boys Party");
}
else{
  print("Girls Party");
}
}