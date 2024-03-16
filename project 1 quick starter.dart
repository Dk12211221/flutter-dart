//1.write a dart program to print all negative elements in an array.


// void main() {
//   List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];
//
//   printNegativeElements(numbers);
// }
//
// void printNegativeElements(List<int> arr) {
//   print("Negative elements in the array:");
//   for (int num in arr) {
//     if (num < 0) {
//       print(num);
//     }
//   }
// }

//2.write a dart program to find largest number in an array.


// void main() {
//   List<int> numbers = [10, 5, 20, 15, 25, 30];
//
//   int largestNumber = findLargestNumber(numbers);
//
//   print("The largest number in the array is: $largestNumber");
// }
//
// int findLargestNumber(List<int> arr) {
//   int largest = arr[0];
//
//   for (int i = 1; i < arr.length; i++) {
//     if (arr[i] > largest) {
//       largest = arr[i];
//     }
//   }
//
//   return largest;
// }



//3.write a dart program to insert,delete,update and view operations on the elements in an array using menu-driven programming approach.


// import 'dart:io';
//
// void main() {
//   List<int> numbers = [];
//
//   while (true) {
//     print("\nMenu:");
//     print("1. Insert");
//     print("2. Delete");
//     print("3. Update");
//     print("4. View");
//     print("5. Exit");
//     stdout.write("Enter your choice: ");
//     String choice = stdin.readLineSync()!;
//
//     switch (choice) {
//       case '1':
//         insertElement(numbers);
//         break;
//       case '2':
//         deleteElement(numbers);
//         break;
//       case '3':
//         updateElement(numbers);
//         break;
//       case '4':
//         viewElements(numbers);
//         break;
//       case '5':
//         exit(0);
//       default:
//         print("Invalid choice. Please enter a valid option.");
//     }
//   }
// }
//
// void insertElement(List<int> arr) {
//   stdout.write("Enter the element to insert: ");
//   int element = int.parse(stdin.readLineSync()!);
//   arr.add(element);
//   print("Element inserted successfully.");
// }
//
// void deleteElement(List<int> arr) {
//   if (arr.isEmpty) {
//     print("Array is empty. No element to delete.");
//     return;
//   }
//
//   stdout.write("Enter the index of the element to delete: ");
//   int index = int.parse(stdin.readLineSync()!);
//
//   if (index < 0 || index >= arr.length) {
//     print("Invalid index. Please enter a valid index.");
//     return;
//   }
//
//   arr.removeAt(index);
//   print("Element deleted successfully.");
// }
//
// void updateElement(List<int> arr) {
//   if (arr.isEmpty) {
//     print("Array is empty. No element to update.");
//     return;
//   }
//
//   stdout.write("Enter the index of the element to update: ");
//   int index = int.parse(stdin.readLineSync()!);
//
//   if (index < 0 || index >= arr.length) {
//     print("Invalid index. Please enter a valid index.");
//     return;
//   }
//
//   stdout.write("Enter the new value: ");
//   int newValue = int.parse(stdin.readLineSync()!);
//
//   arr[index] = newValue;
//   print("Element updated successfully.");
// }
//
// void viewElements(List<int> arr) {
//   if (arr.isEmpty) {
//     print("Array is empty.");
//     return;
//   }
//
//   print("Elements in the array:");
//   for (int i = 0; i < arr.length; i++) {
//     print("Index $i: ${arr[i]}");
//   }
// }


//4.write a dart program to addition of two matrices of dimension 3x3.


// import 'dart:io';
//
// void main() {
//   List<List<int>> matrix1 = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9]
//   ];
//
//   List<List<int>> matrix2 = [
//     [9, 8, 7],
//     [6, 5, 4],
//     [3, 2, 1]
//   ];
//
//   List<List<int>> result = addMatrices(matrix1, matrix2);
//
//   print("Matrix 1:");
//   printMatrix(matrix1);
//   print("\nMatrix 2:");
//   printMatrix(matrix2);
//   print("\nResultant Matrix:");
//   printMatrix(result);
// }
//
// List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
//   List<List<int>> result = List.generate(3, (_) => List.filled(3, 0));
//
//   for (int i = 0; i < 3; i++) {
//     for (int j = 0; j < 3; j++) {
//       result[i][j] = matrix1[i][j] + matrix2[i][j];
//     }
//   }
//
//   return result;
// }
//
// void printMatrix(List<List<int>> matrix) {
//   for (int i = 0; i < matrix.length; i++) {
//     for (int j = 0; j < matrix[i].length; j++) {
//       stdout.write("${matrix[i][j]} ");
//     }
//     print("");
//   }
// }



// 5.Write a Dart program to find below mentioned operations on the 3x3 array using menu-driven programming approach.
// Perform below all mentioned by user choice:
// 1.Sum of all elements
// 2.um of specific Row
// 3.Sum of specific Column
// 4.sum of diagonal elements
// 5.Sum of antidiagonal elements
// 6.Press 0 for exit



// import 'dart:io';
//
// void main() {
//   List<List<int>> matrix = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9]
//   ];
//
//   while (true) {
//     print("\nMenu:");
//     print("1. Sum of all elements");
//     print("2. Sum of specific Row");
//     print("3. Sum of specific Column");
//     print("4. Sum of diagonal elements");
//     print("5. Sum of anti-diagonal elements");
//     print("0. Exit");
//     stdout.write("Enter your choice: ");
//     String choice = stdin.readLineSync()!;
//
//     switch (choice) {
//       case '1':
//         print("Sum of all elements: ${sumAllElements(matrix)}");
//         break;
//       case '2':
//         stdout.write("Enter the row index (0, 1, or 2): ");
//         int row = int.parse(stdin.readLineSync()!);
//         print("Sum of Row $row: ${sumRow(matrix, row)}");
//         break;
//       case '3':
//         stdout.write("Enter the column index (0, 1, or 2): ");
//         int col = int.parse(stdin.readLineSync()!);
//         print("Sum of Column $col: ${sumColumn(matrix, col)}");
//         break;
//       case '4':
//         print("Sum of diagonal elements: ${sumDiagonal(matrix)}");
//         break;
//       case '5':
//         print("Sum of anti-diagonal elements: ${sumAntiDiagonal(matrix)}");
//         break;
//       case '0':
//         exit(0);
//       default:
//         print("Invalid choice. Please enter a valid option.");
//     }
//   }
// }
//
// int sumAllElements(List<List<int>> matrix) {
//   int sum = 0;
//   for (List<int> row in matrix) {
//     sum += row.reduce((value, element) => value + element);
//   }
//   return sum;
// }
//
// int sumRow(List<List<int>> matrix, int row) {
//   return matrix[row].reduce((value, element) => value + element);
// }
//
// int sumColumn(List<List<int>> matrix, int col) {
//   int sum = 0;
//   for (List<int> row in matrix) {
//     sum += row[col];
//   }
//   return sum;
// }
//
// int sumDiagonal(List<List<int>> matrix) {
//   int sum = 0;
//   for (int i = 0; i < matrix.length; i++) {
//     sum += matrix[i][i];
//   }
//   return sum;
// }

// int sumAntiDiagonal(List<List<int>> matrix) {
//   int sum = 0;
//   int n = matrix.length;
//   for (int i = 0; i < n; i++) {
//     sum += matrix[i][n - i - 1];
//   }
//   return sum;
// }





