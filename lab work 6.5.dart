                        // 1. WAP using FormatException example.

import 'dart:io';

void main() {
  try {
    print('Enter a number:');
    String input = stdin.readLineSync()!;
    int number = int.parse(input);
    print('The parsed number is: $number');
  } catch (e) {
    if (e is FormatException) {
      print('Invalid input! Please enter a valid integer.');
    } else {
      print('An error occurred: $e');
    }
  }
}

                            // 2.WAP using final block.

void main() {
  try {

    int result = 10 ~/ 0;
    print('Result: $result');
  } catch (e) {

    print('An error occurred: $e');
  } finally {

    print('This code is always executed.');
  }
}


                          // 3. WAP Using try-catch block

void main() {
  try {

    int result = 10 ~/ 2;
    print('Result: $result');
  } catch (e) {

    print('An error occurred: $e');
  }
}


