import 'dart:io';
import 'dart:math';
void main(){
    /* Generate random number Range is between 1000 and 9999 */
    final random = Random();
    String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
    print(randomNumber);
    stdout.write("Welcome to Cows and Bulls\nType 'exit' to stop the game\n");
    int attempts = 0;
    // Actual game
    while (true){
        int cows = 0;
        int bulls = 0;
        attempts += 1;
        stdout.write("\nPlease choose a four digit number: ");
        String chosenNumber = stdin.readLineSync()!;
        // Conditions to check if the game is over
        if (chosenNumber == randomNumber){
            print("Bullseye! You took $attempts attempts");
            break;
        }
        else if (chosenNumber == "exit"){
            print("Bye bye!");
            break;
        }
        else if (chosenNumber.length != randomNumber.length){
            print("Incorrect number. Make sure to give 4 digit number");
            continue;
        }
        /* If a digit is in the same index increase the cow If it is somewhere else increase the bull*/
        List<bool> l = [false,false,false,false];
        for(int i=0;i<str.length;i++)
        {
            if(str[i]==b[i])
            {
                cow++;
                x[i]=true;
            }
        }
        for(int i=0;i<str.length;i++)
        {
            bool y=false;
            if(x[i]==false)
            {
                for(int j=0;j<str.length;j++)
                {
                    if(x[j]!=true && str[j]==b[i])
                    {
                        y=true;
                        x[j]=true;
                        break;
                        
                    }
                }
                if(y==true)
                {
                    bull++;
                }
            }
            
        }
        print("$cow cows and $bull bulls");
    }
}
