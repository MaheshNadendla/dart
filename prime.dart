import 'dart:io'; 
import 'dart:math'; 

void main(){ 
    stdout.write("Please give us a number: "); 
    int chosenNumber = int.parse(stdin.readLineSync()!); 
    if(checkPrime(chosenNumber)){
        print("Yes");
    }
    else{
        print("No");
    }
}
  
bool checkPrime(int num) { 
    if(num < 2){
        return false;
    }
    for(int i = 2; i <= sqrt(num).toInt(); i++){ 
        if(num % i == 0){
            return false;
        }
    }
    return true;
}

