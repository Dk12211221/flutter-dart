import 'dart:io';
//T-1 Write a Dart program to Print Hello Dart.
printhello(){
  print('Hello Dart');
}

void main() {
  printhello();
  performaddition();
performmultiplication();
MultiplicstionTable();
}
//T-2 Write a Dart program to perform addition of two different numbers.
performaddition(){
  int num1 = 10;
  int num2 = 20;

  int sum = num1 + num2;

  print('The sum of $num1 and $num2 is $sum');
}


//T-3 Write a Dart program to perform multiplication of two user given numbers.
performmultiplication(){
  int num1 = 10;
  int num2 = 20;

  int result = num1 + num2;

  print('The Multiplication of $num1 and $num2 is $result');
}


//T-4 Write a Dart program to print multiplication table of user given number.

MultiplicstionTable() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  print("\nMultiplication Table of $number:");

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number * $i = $result");
  }
}

