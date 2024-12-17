import 'dart:io';

void main(){
    stdout.write("Hi, please choose a number : ");
    int number = int.parse(stdin.readLineSync()!);

    if(number%2==0){
        print("$number number is even");
    }
    else{
        print("$number number is odd");
    }

}

// Output : 
// Hi, please choose a number : 48
// 48 number is even