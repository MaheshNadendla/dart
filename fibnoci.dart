import 'dart:io';
void main(){
    stdout.write("How many Fibonacci numbers do you want? ");
    int n = int.parse(stdin.readLineSync()!);

    if(n<=0)
    {
        print("[]");
    }
    else{
        List<int> result = fibonacciNumbers(n);
        print(result);
    }
}

List<int> fibonacciNumbers(int chosenNumber){
    int a = -1,b = 1,c;
    List<int> fibList = [ ];
    for (var i = 0; i < chosenNumber; i++){
        c = a + b;
        fibList.add(c);
        a=b;
        b=c;
    }
    return fibList;
}
