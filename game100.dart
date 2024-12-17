import 'dart:io';
import 'dart:math';

void main(){

    final ran = Random();

    int num = ran.nextInt(100);
    num++;

    print(num);
    int n;
    int moves = 0;
    while(true)
    {
        print("Welcome back to gussing game");
        print("Enter -1 to exit the game");
        stdout.write("Gusses the number : ");
        n = int.parse(stdin.readLineSync()!);

        if(num>=1 && num<=100){

            if(n==-1){
                break;
            }
            else if(n==num){
                moves++;
                print("you win in $moves");
            }
            else if(n>num){

                moves++;
                print("Lesser number");
                
            }
            else{

                moves++;
                print("Greater number");
                
            }
        }
        else{
            print("choose the number from 1 to 100 only");
        }

        print(n);

        

    }



}