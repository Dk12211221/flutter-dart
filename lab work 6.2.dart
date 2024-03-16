//1. WAP to create a class for student to get and print details of N students. (with use of array of objects)


// import 'dart:io';
//
// class Student {
//   String name;
//   int age;
//   String grade;
//
//   Student(this.name, this.age, this.grade);
//
//   void displayDetails() {
//     print('Name: $name');
//     print('Age: $age');
//     print('Grade: $grade');
//     print('------------------');
//   }
// }
//
// void main() {
//   print('Enter the number of students:');
//   int n = int.parse(stdin.readLineSync()!);
//
//   List<Student> students = [];
//
//   for (int i = 0; i < n; i++) {
//     print('\nEnter details for student ${i + 1}:');
//     print('Enter name:');
//     String name = stdin.readLineSync()!;
//     print('Enter age:');
//     int age = int.parse(stdin.readLineSync()!);
//     print('Enter grade:');
//     String grade = stdin.readLineSync()!;
//
//     students.add(Student(name, age, grade));
//   }
//
//   print('\nDetails of ${students.length} students:');
//   for (int i = 0; i < students.length; i++) {
//     print('\nDetails of student ${i + 1}:');
//     students[i].displayDetails();
//   }
// }



//2. WAP to get N no of Emp data like name, salary, designation and print the data with ascending order of Name.



// import 'dart:io';
//
// class Employee {
//   String name;
//   double salary;
//   String designation;
//
//   Employee(this.name, this.salary, this.designation);
// }
//
// void main() {
//   print('Enter the number of employees:');
//   int n = int.parse(stdin.readLineSync()!);
//
//   List<Employee> employees = [];
//
//   for (int i = 0; i < n; i++) {
//     print('\nEnter details for employee ${i + 1}:');
//     print('Enter name:');
//     String name = stdin.readLineSync()!;
//     print('Enter salary:');
//     double salary = double.parse(stdin.readLineSync()!);
//     print('Enter designation:');
//     String designation = stdin.readLineSync()!;
//
//     employees.add(Employee(name, salary, designation));
//   }
//
//   // Sorting employees by name in ascending order
//   employees.sort((a, b) => a.name.compareTo(b.name));
//
//   print('\nEmployee data in ascending order of names:');
//   for (int i = 0; i < employees.length; i++) {
//     print('\nDetails of employee ${i + 1}:');
//     print('Name: ${employees[i].name}');
//     print('Salary: ${employees[i].salary}');
//     print('Designation: ${employees[i].designation}');
//   }
// }


// 3. WAP to make Railway Reservation System.
// Requirements:
// (A) User Input Train Number , Train Name , Source , Destination , Train Time.
// (B) Display Record By Search Train Number.
// (C) Minimum 3 Input Train Record.



// import 'dart:io';
//
// class Train {
//   int trainNumber;
//   String trainName;
//   String source;
//   String destination;
//   String trainTime;
//
//   Train(this.trainNumber, this.trainName, this.source, this.destination, this.trainTime);
// }
//
// void main() {
//   List<Train> trains = [];
//
//   // Input train records
//   for (int i = 0; i < 3; i++) {
//     print('\nEnter details for Train ${i + 1}:');
//     print('Enter Train Number:');
//     int trainNumber = int.parse(stdin.readLineSync()!);
//     print('Enter Train Name:');
//     String trainName = stdin.readLineSync()!;
//     print('Enter Source:');
//     String source = stdin.readLineSync()!;
//     print('Enter Destination:');
//     String destination = stdin.readLineSync()!;
//     print('Enter Train Time:');
//     String trainTime = stdin.readLineSync()!;
//
//     trains.add(Train(trainNumber, trainName, source, destination, trainTime));
//   }
//
//   // Display records by search train number
//   print('\nEnter Train Number to search:');
//   int searchTrainNumber = int.parse(stdin.readLineSync()!);
//
//   bool found = false;
//   for (int i = 0; i < trains.length; i++) {
//     if (trains[i].trainNumber == searchTrainNumber) {
//       found = true;
//       print('\nTrain Found:');
//       print('Train Number: ${trains[i].trainNumber}');
//       print('Train Name: ${trains[i].trainName}');
//       print('Source: ${trains[i].source}');
//       print('Destination: ${trains[i].destination}');
//       print('Train Time: ${trains[i].trainTime}');
//       break;
//     }
//   }
//
//   if (!found) {
//     print('\nTrain with the given Train Number not found.');
//   }
// }


//4. WAP to make Supermarket Billing System.
// Requirements:
// (A) Verify User Id And Password
// (B) User Input Item Number , Item Name , Quantity , Tax , Discount.
// (C) Display All Record In Ascending order (by item Number)


// import 'dart:io';
//
// class Item {
//   int itemNumber;
//   String itemName;
//   int quantity;
//   double tax;
//   double discount;
//
//   Item(this.itemNumber, this.itemName, this.quantity, this.tax, this.discount);
// }
//
// void main() {
//   // Dummy user id and password for demonstration
//   String userId = 'admin';
//   String password = 'password';
//
//   print('Welcome to Supermarket Billing System');
//
//   // User authentication
//   print('\nEnter user ID:');
//   String enteredUserId = stdin.readLineSync()!;
//   print('Enter password:');
//   String enteredPassword = stdin.readLineSync()!;
//
//   if (enteredUserId != userId || enteredPassword != password) {
//     print('\nInvalid user ID or password. Exiting...');
//     return;
//   }
//
//   List<Item> items = [];
//
//   // Input item details
//   while (true) {
//     print('\nEnter details for Item:');
//     print('Enter Item Number:');
//     int itemNumber = int.parse(stdin.readLineSync()!);
//     print('Enter Item Name:');
//     String itemName = stdin.readLineSync()!;
//     print('Enter Quantity:');
//     int quantity = int.parse(stdin.readLineSync()!);
//     print('Enter Tax:');
//     double tax = double.parse(stdin.readLineSync()!);
//     print('Enter Discount:');
//     double discount = double.parse(stdin.readLineSync()!);
//
//     items.add(Item(itemNumber, itemName, quantity, tax, discount));
//
//     print('\nDo you want to add another item? (yes/no)');
//     String choice = stdin.readLineSync()!.toLowerCase();
//     if (choice != 'yes') {
//       break;
//     }
//   }
//
//   // Sorting items by item number in ascending order
//   items.sort((a, b) => a.itemNumber.compareTo(b.itemNumber));
//
//   // Display all records
//   print('\nAll Records in Ascending order (by Item Number):');
//   for (int i = 0; i < items.length; i++) {
//     print('\nItem ${i + 1}:');
//     print('Item Number: ${items[i].itemNumber}');
//     print('Item Name: ${items[i].itemName}');
//     print('Quantity: ${items[i].quantity}');
//     print('Tax: ${items[i].tax}');
//     print('Discount: ${items[i].discount}');
//   }
// }