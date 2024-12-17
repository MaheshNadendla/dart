import 'dart:io'; 
import 'dart:math'; 

void main()
{ 
   

    final random = Random(); 
    // Initial score
    int user = 0; 
    int comp = 0; 
    int win = 0;

    // Options for computer to choose 
    List<String> options = ["rock", "paper", "scissors"];

    // Actual game 
    while (true){ 
        win = 0;
        print("\n                ...New Game...                  ");
        print("................................................");
        print(".                                              .");
        print(".     ..Welcome to Rock, Paper, Scissors..     .");
        print(".       Please Choose Your Choice Bellow       .");
        print(".    1)To Select Rock      : Type => 'rock'    .");
        print(".    2)To Select Paper     : Type => 'paper'   .");
        print(".   3)To Select Scissors  : Type => 'scissors' .");
        print(".       To end the game : Type => 'exit'       .");
        print("................................................");

        stdout.write("Type Your Choice : "); 
        String compChoice = options[random.nextInt(options.length)];
        String userChoice = stdin.readLineSync()!.toLowerCase(); 
        if (userChoice == "exit") { 

            print("\nYour score     : $user");
            print("Computer score : $comp");
            print("Bye Bye!");
            break; 
        } 
        if (!options.contains(userChoice)){ 
            print("Incorrect choice"); 
            continue; 
        } 
        else{
            print("\n                 ...Result...                   ");
            print("................................................");
            print(".                                              .");
            if(userChoice=="rock")
            print(".      Your choice     :    rock               .");
            else if(userChoice=="paper")
            print(".      Your choice     :    paper              .");
            else if(userChoice=="scissors")
            print(".      Your choice     :    scissors           .");

            if(compChoice=="rock")
            print(".      Computer choice :    rock               .");
            else if(compChoice=="paper")
            print(".      Computer choice :    paper              .");
            else if(compChoice=="scissors")
            print(".      Computer choice :    scissors           .");

            if(compChoice==userChoice)
            {

                if(compChoice=="rock")
                print(".             rock  vs  rock                   .");
                else if(compChoice=="paper")
                print(".            paper  vs  paper                  .");
                else if(compChoice=="scissors")
                print(".         scissors  vs  scissors               .");
                print(".        Match Draw : No One Win Game          ."); 
                win = -1;
                
            }
            else if( userChoice == "rock")
            {
                if(compChoice == "paper")
                {
                    print(".                                              .");
                    print(".               Rock  vs  Paper                .");
                    print(".             Rock Hold by Paper              .");
                    print(".             Paper wins the Game              .");
                    comp++;
                }
                else if(compChoice == "scissors")
                {
                    print(".                                              .");
                    print(".             Rock  vs  Scissors               .");
                    print(".           Rock breaks the Scissors           .");
                    print(".             Rock wins the Game               .");
                    win = 1;
                    user++;
                }
            }
            else if( userChoice == "paper")
            {
                if(compChoice == "scissors")
                {

                    print(".                                              .");
                    print(".             Paper  vs  Scissors              .");
                    print(".            Paper Cuts by Scissors            .");
                    print(".            Scissors wins the Game            .");

                    comp++;
                }
                else if(compChoice == "rock")
                {
                    print(".                                              .");
                    print(".               Paper  vs  Rock                .");
                    print(".             Paper Hold the Rock              .");
                    print(".             Paper wins the Game              .");
                    win = 1; 
                    user++;
                }
            }
            else if( userChoice == "scissors")
            {
                if(compChoice == "rock")
                {
                    print(".                                              .");
                    print(".             Scissors  vs  Rock               .");
                    print(".           Scissors breaks by Rock            .");
                    print(".             Rock wins the Game               .");
                    comp++;
                }
                else if(compChoice == "paper")
                {
                    print(".                                              .");
                    print(".             Scissors  vs  Paper              .");
                    print(".            Scissors Cut the Paper            .");
                    print(".            Scissors wins the Game            .");
                    win = 1;
                    user++;
                }
            }
            else{
                print("Error in game");
            }
        }

        print("................................................");
        print("................................................");

        if(win==1){
            print("\nFinal Dession  :  Congras You Win The Game ");
        }
        else if(win==-1){
            print("\nFinal Dession  :        Match Draw         ");
        }
        else if(win==0){
            print("\nFinal Dession  :     You Lose The Game     ");
        }

        print("Your score     : $user");
        print("Computer score : $comp");

    }
}
