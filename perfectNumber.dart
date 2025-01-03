void main() {
  int number = 28; // Change this number to test
  if (isPerfectNumber(number)) {
    print('$number is a Perfect Number.');
  } else {
    print('$number is not a Perfect Number.');
  }
}

bool isPerfectNumber(int number) {
  int sum = 0;
  
  // Find all divisors of the number (excluding the number itself)
  for (int i = 1; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      sum += i; // Add the divisor to the sum
    }
  }
  
  // Check if the sum of divisors equals the number
  return sum == number;
}
