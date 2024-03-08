import 'dart:io';
import 'dart:math';

//T-1 Write a Dart program to Print Hello Dart.
printhello(){
  print('Hello Dart');
}

void main() {
  printhello();
  performaddition();
  performmultiplication();
  MultiplicstionTable();
  multiplicationn1n2();
  findCube();
  Fullname();
  findaSimpleInterestin();
  calculator();
  evenorodd();
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

//T-5 Write a Dart program to generates multiplication tables between n1 and n2 provided values.

multiplicationn1n2() {
  print('Enter the starting number (n1):');
  int n1 = int.parse(stdin.readLineSync()!);

  print('Enter the ending number (n2):');
  int n2 = int.parse(stdin.readLineSync()!);

  print('Enter the number of multiples:');
  int multiplesCount = int.parse(stdin.readLineSync()!);

  printMultiplicationTables(n1, n2, multiplesCount);
}

void printMultiplicationTables(int n1, int n2, int multiplesCount) {
  for (int i = n1; i <= n2; i++) {
    print('Multiplication table for $i:');
    for (int j = 1; j <= multiplesCount; j++) {
      print('$i * $j = ${i * j}');
    }
    print('');
  }
}

//T-6 Write a Dart program to find a cube of any number.

void findCube() {
  print("Enter a number to find its cube:");
  double number = double.parse(stdin.readLineSync()!);
  double cube = number * number * number;
  print("The cube of $number is: $cube");
}

//T-7 Write a Dart program to print full name by getting first name and last name by user input.



void Fullname() {
  print('Enter your first name:');
  String firstName = stdin.readLineSync()!;

  print('Enter your last name:');
  String lastName = stdin.readLineSync()!;

  String fullName = getFullName(firstName, lastName);
  print('Your full name is: $fullName');
}

String getFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

//T-8 Write a Dart program to find a Simple Interest.



void findaSimpleInterestin() {
  print('Enter principal amount:');
  double principal = double.parse(stdin.readLineSync()!);

  print('Enter rate of interest (in percentage):');
  double rate = double.parse(stdin.readLineSync()!);

  print('Enter time period (in years):');
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = calculateSimpleInterest(principal, rate, time);
  print('Simple Interest: $simpleInterest');
}

double calculateSimpleInterest(double principal, double rate, double time) {
  return (principal * rate * time) / 100;
}

//T-9 Write a Dart program to create a calculator using switch case.


void calculator() {
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  double result = calculate(num1, num2, operator);
  print('Result: $result');
}

double calculate(double num1, double num2, String operator) {
  double result = 0;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero');
      }
      break;
    default:
      print('Error: Invalid operator');
  }
  return result;
}

//T-10 Write a Dart program to find a user given number is even or odd.



void  evenorodd() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  if (isEven(number)) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

bool isEven(int number) {
  return number % 2 == 0;
}



