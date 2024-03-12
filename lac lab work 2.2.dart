            // 1.Write a Dart program to concate list element
            //   value with hello.
            //   For exmple,
            //   input: [1, 2, 3]
            //   output: [1 hello, 2 hello, 3 hello]


void main() {
  List<int> input = [1, 2, 3];
  List<String> output = concatenateWithHello(input);
  print(output);
}

List<String> concatenateWithHello(List<int> input) {
  List<String> output = [];
  for (int number in input) {
    output.add('$number hello');
  }
  return output;
}


               // 2.Write a Dart program to create a list which contains all Indian states.
               //   Add all indian states in list by user input.
               //    After that print all states using any type of loop.


import 'dart:io';

void main() {
  List<String> indianStates = [];


  while (true) {
    print('Enter an Indian state (or type "done" to finish):');
    String input = stdin.readLineSync()!.trim();

    if (input.toLowerCase() == 'done') {
      break;
    } else {
      indianStates.add(input);
    }
  }


  print('\nIndian States:');
  for (String state in indianStates) {
    print(state);
  }
}
