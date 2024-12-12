import 'dart:io';
void main()
{

    stdout.write("What's your name ? : "); 
    String? name = stdin.readLineSync();
    stdout.write("Hi, $name! What is your age ? : "); 
    int age = int.parse(stdin.readLineSync()!);
    int noOfYearsToGetHunderd = 100 - age;
    print("$name, You have $noOfYearsToGetHunderd years to be 100"); 
    
}