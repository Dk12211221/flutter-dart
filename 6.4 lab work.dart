// 1.Display 30 Students Data with Roll no and name and Course with Factory Constructor.

import 'dart:math';

class Student {
  final int rollNo;
  final String name;
  final String course;

  Student(this.rollNo, this.name, this.course);

  factory Student.generate(int index) {
    List<String> names = [
      'Darshan', 'jay', 'prince', 'dev', 'jigo'];

    List<String> courses = ['Mathematics', 'Science', 'History', 'English', 'Computer Science'];

    Random random = Random();

    String name = names[random.nextInt(names.length)];
    String course = courses[random.nextInt(courses.length)];

    return Student(index + 1, name, course);
  }
}

void main() {
  List<Student> students = List.generate(5, (index) => Student.generate(index));

  print('Student Data:');
  for (int i = 0; i < students.length; i++) {
    print('Roll No: ${students[i].rollNo}, Name: ${students[i].name}, Course: ${students[i].course}');
  }
}

// 2.Create Ecommerce product List<Map> and convert into List of Model and print all data Price descending ordered (Minimum 20 product).

class Product {
  final String name;
  final double price;
  final String category;

  Product(this.name, this.price, this.category);

  @override
  String toString() {
    return 'Product: $name, Price: $price, Category: $category';
  }
}

void main() {
  List<Map<String, dynamic>> productList = [
    {'name': 'Product 1', 'price': 50, 'category': 'Electronics'},
    {'name': 'Product 2', 'price': 100, 'category': 'Clothing'},
    {'name': 'Product 3', 'price': 150, 'category': 'Electronics'},
    {'name': 'Product 4', 'price': 200, 'category': 'Beauty'},
    {'name': 'Product 5', 'price': 250, 'category': 'Electronics'},
    // Add more products here
  ];

  List<Product> products = convertToProductList(productList);

  products.sort((a, b) => b.price.compareTo(a.price)); // Sort by price in descending order

  print('Product Data (Ordered by Price - Descending):');
  for (Product product in products) {
    print(product);
  }
}

List<Product> convertToProductList(List<Map<String, dynamic>> productList) {
  List<Product> products = [];

  for (var productMap in productList) {
    String name = productMap['name'];
    double price = productMap['price'].toDouble();
    String category = productMap['category'];

    Product product = Product(name, price, category);
    products.add(product);
  }

  return products;
}


// 3. Create a program to online food delivery.
// - Create food item list using a map (minimum - 20 product)
// - Convert list map to list of model.
// - And show data like menu driven system
//   1. Ascending order
//   2. Descending order
//   3. Filter data between two price Like  user enter ( 200 to 600 ) show in between product


class FoodItem {
  final String name;
  final double price;

  FoodItem(this.name, this.price);

  @override
  String toString() {
    return 'Food Item: $name, Price: $price';
  }
}

void main() {
  List<Map<String, dynamic>> foodItemList = [
    {'name': 'Burger', 'price': 100},
    {'name': 'Pizza', 'price': 200},
    {'name': 'Salad', 'price': 150},
    {'name': 'Pasta', 'price': 250},
    {'name': 'Sandwich', 'price': 300},

  ];

  List<FoodItem> foodItems = convertToFoodItemList(foodItemList);

  int choice;

  do {
    print('\nMenu:');
    print('1. Ascending order');
    print('2. Descending order');
    print('3. Filter data between two prices');
    print('4. Exit');
    print('Enter your choice: ');
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        foodItems.sort((a, b) => a.price.compareTo(b.price));
        printFoodItems(foodItems);
        break;
      case 2:
        foodItems.sort((a, b) => b.price.compareTo(a.price));
        printFoodItems(foodItems);
        break;
      case 3:
        print('Enter minimum price: ');
        double minPrice = double.parse(stdin.readLineSync()!);
        print('Enter maximum price: ');
        double maxPrice = double.parse(stdin.readLineSync()!);
        List<FoodItem> filteredItems = filterByPriceRange(foodItems, minPrice, maxPrice);
        printFoodItems(filteredItems);
        break;
      case 4:
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  } while (choice != 4);
}

List<FoodItem> convertToFoodItemList(List<Map<String, dynamic>> foodItemList) {
  List<FoodItem> foodItems = [];
  for (var foodItemMap in foodItemList) {
    String name = foodItemMap['name'];
    double price = foodItemMap['price'].toDouble();
    FoodItem foodItem = FoodItem(name, price);
    foodItems.add(foodItem);
  }
  return foodItems;
}

List<FoodItem> filterByPriceRange(List<FoodItem> foodItems, double minPrice, double maxPrice) {
  return foodItems.where((item) => item.price >= minPrice && item.price <= maxPrice).toList();
}

void printFoodItems(List<FoodItem> foodItems) {
  if (foodItems.isEmpty) {
    print('No items found.');
  } else {
    print('Food Items:');
    for (var foodItem in foodItems) {
      print(foodItem);
    }
  }
}


