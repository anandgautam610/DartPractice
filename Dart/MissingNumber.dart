void main(List<String> args) {
  var num = [1,2,3,5,4,7];

  int findDisappearedNumbers(num)
    {
        int n=num.length;
        int sum=((n+1)*(n+2))~/2;
        for(int i=0;i<n;i++){
          sum-=num[i] as int;
        }
        return sum;
    }
    print(findDisappearedNumbers(num));
}