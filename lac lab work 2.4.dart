// 1. Writ a Dart Program to gt an print total thr
// mplo!s information using usr input an
// Map atat!p(us MapEntr! class)
//
// Tak low mntion attriuts for on
// mplo!
// i
// nam
// ag
// salar!
//
//
// import 'dart:io';
//
// void main() {
//   Map<int, MapEntry<String, double>> employees = {};
//
//   // Getting employee information from user input
//   print('Enter employee information (name, age, salary), or type "done" to finish:');
//   while (true) {
//     print('Enter employee name:');
//     String name = stdin.readLineSync()!;
//     if (name.toLowerCase() == 'done') break;
//
//     print('Enter employee age:');
//     int age = int.parse(stdin.readLineSync()!);
//
//     print('Enter employee salary:');
//     double salary = double.parse(stdin.readLineSync()!);
//
//     employees[employees.length + 1] = MapEntry(name, salary);
//   }
//
//   // Printing total number of employees and their information
//   print('\nTotal Employees: ${employees.length}');
//   employees.forEach((key, value) {
//     print('Employee $key: Name: ${value.key}, Salary: ${value.value}');
//   });
// }
//
//
//
//
// 2. Writ a Dart Program to print all unique elements
// // from a List.
// //
// // elements may be  redundant while entering into
// // a List. User can only enter elements of string datatype
//
//
// import 'dart:io';
//
// void main() {
//   List<String> elements = [];
//
//   print('Enter elements (type "done" to finish):');
//   while (true) {
//     String? input = stdin.readLineSync();
//     if (input == null || input.toLowerCase() == 'done') {
//       break;
//     } else {
//       elements.add(input);
//     }
//   }
//
//   List<String> uniqueElements = elements.toSet().toList();
//
//   print('\nUnique Elements:');
//   for (String element in uniqueElements) {
//     print(element);
//   }
// }
//
