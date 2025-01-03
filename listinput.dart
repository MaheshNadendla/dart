import 'dart:io';

void main(){

    List<int> l = stdin.readLineSync()!
                    .split(RegExp(r'\s+'))
                    .map(int.parse)
                    .toList();

                    
    print(l);
}