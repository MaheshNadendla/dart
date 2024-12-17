import 'dart:io';

void main(){

    int n = int.parse(stdin.readLineSync()!);

    String r ="---";
    String c = "|";
    String s = " ";

    for(var i=0;i<n;i++){
        for(var j=0;j<n;j++){

            stdout.write(s);
            stdout.write(r);
            
        }
        stdout.write("\n");
        for(var j=0;j<n+1;j++){
            stdout.write(c);
            stdout.write(s);
            stdout.write(s);
            stdout.write(s);
        }
        stdout.write("\n");
    }

    for(var j=0;j<n;j++){

        stdout.write(s);
        stdout.write(r);
        
    }

}