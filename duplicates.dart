import 'dart:math';
void main(){
    final random = Random();
    List<int> randList = [];
    for(int i=0;i<10;i++){
        randList.add(random.nextInt(10));
    }
    print("Initial list is $randList\n");
    print("Cleaned list is ${removeDuplicates(randList)}");
}
List<int> removeDuplicates(List<int> initialList){
    return initialList.toSet().toList();
}
