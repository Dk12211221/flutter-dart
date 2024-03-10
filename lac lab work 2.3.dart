//                         1.Write a Dart program to set an integer 1D array in Ascending order.



// void main() {
//   List<int> numbers = [5, 2, 8, 3, 1];
//   sortAscending(numbers);
//   print('Sorted Array in Ascending Order: $numbers');
// }
//
// void sortAscending(List<int> numbers) {
//   numbers.sort();
// }


//                           2.Write a Dart program to find the second large element from an integer 1D array.


// void main() {
//   List<int> numbers = [5, 2, 8, 3, 1]; // Example array
//   int secondLargest = findSecondLargest(numbers);
//   print('Second Largest Element: $secondLargest');
// }
//
// int findSecondLargest(List<int> numbers) {
//   if (numbers.length < 2) {
//     throw ArgumentError('Array must contain at least two elements.');
//   }
//
//   int firstLargest = numbers[0];
//   int secondLargest = numbers[1];
//
//   for (int i = 2; i < numbers.length; i++) {
//     if (numbers[i] > firstLargest) {
//       secondLargest = firstLargest;
//       firstLargest = numbers[i];
//     } else if (numbers[i] > secondLargest && numbers[i] != firstLargest) {
//       secondLargest = numbers[i];
//     }
//   }
//
//   return secondLargest;
// }



//                          3. Write a Dart program to left rotate an integer 1D array as per user choice.
//                             For example,
//                               Initial Array = [6, 3, 8, 5, 2, 9]
//                                 Rotate number = 2
//                                    Final Array = [8, 5, 2, 9, 6, 3]


// void main() {
//   List<int> initialArray = [6, 3, 8, 5, 2, 9]; // Example initial array
//   int rotateNumber = 2; // Example rotate number
//   List<int> finalArray = leftRotateArray(initialArray, rotateNumber);
//
//   print('Initial Array: $initialArray');
//   print('Rotate Number: $rotateNumber');
//   print('Final Array: $finalArray');
// }
//
// List<int> leftRotateArray(List<int> array, int rotateNumber) {
//   int length = array.length;
//   List<int> rotatedArray = List<int>.filled(length, 0);
//
//   for (int i = 0; i < length; i++) {
//     int newPosition = (i + rotateNumber) % length;
//     rotatedArray[i] = array[newPosition];
//   }
//
//   return rotatedArray;
// }
