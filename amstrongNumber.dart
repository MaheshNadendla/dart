import 'dart:math';

void main() {
  int number = 153; // Change this number to test
  if (isArmstrong(number)) {
    print('$number is an Armstrong number.');
  } else {
    print('$number is not an Armstrong number.');
  }
}

bool isArmstrong(int number) {
  int sum = 0;
  int originalNumber = number;
  int digits = number.toString().length; // Get the number of digits
  
  while (number > 0) {
    int digit = number % 10; // Extract the last digit
    sum += pow(digit, digits).toInt(); // Add the power of the digit to the sum
    number ~/= 10; // Remove the last digit
  }
  
  return sum == originalNumber;
}


