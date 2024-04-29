// import 'package:flutter/material.dart';
//  // Import Provider package
//
// void main() {
//   runApp(EcommerceApp());
// }
//
// class EcommerceApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ecommerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class Product {
//   final String name;
//   final double price;
//   final String imageUrl;
//   final String category;
//   int quantity;
//
//   Product({
//     required this.name,
//     required this.price,
//     required this.imageUrl,
//     required this.category,
//     this.quantity = 1,
//   });
// }
//
// class Cart extends ChangeNotifier {
//   final List<Product> _items = [];
//
//   List<Product> get items => _items;
//
//   void addToCart(Product product) {
//     _items.add(product);
//     notifyListeners();
//   }
//
//   void removeFromCart(Product product) {
//     _items.remove(product);
//     notifyListeners();
//   }
//
//   double getTotalPrice() {
//     return _items.fold(0, (sum, item) => sum + (item.price * item.quantity));
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ecommerce App'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CartPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             CategoryFilter(),
//             Expanded(
//               child: ProductList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryFilter extends StatefulWidget {
//   @override
//   _CategoryFilterState createState() => _CategoryFilterState();
// }
//
// class _CategoryFilterState extends State<CategoryFilter> {
//   String selectedCategory = 'All';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedCategory,
//       onChanged: (newValue) {
//         setState(() {
//           selectedCategory = newValue!;
//         });
//       },
//       items: [
//         'All',
//         'Category 1',
//         'Category 2',
//         'Category 3',
//       ].map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
//
// class ProductList extends StatelessWidget {
//   Object? get selectedCategory => null;
//
//
//   @override
//   Widget build(BuildContext context) {
//      // Use watch method here
//     final filteredProducts = products.where((product) {
//       if (selectedCategory == 'All') {
//         return true;
//       } else {
//         return product.category == selectedCategory;
//       }
//     }).toList();
//
//     return ListView.builder(
//       itemCount: filteredProducts.length,
//       itemBuilder: (context, index) {
//         final product = filteredProducts[index];
//         return ListTile(
//           title: Text(product.name),
//           subtitle: Text('\$${product.price}'),
//           trailing: IconButton(
//             icon: Icon(Icons.add_shopping_cart),
//             onPressed: () {
//               context.read<Cart>().addToCart(product);
//             },
//           ),
//         );
//       },
//     );
//   }
// }
//
// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//
//     var cart;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.items.length,
//               itemBuilder: (context, index) {
//                 final product = cart.items[index];
//                 return ListTile(
//                   title: Text(product.name),
//                   subtitle: Text('\$${product.price}'),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.remove),
//                         onPressed: () {
//                           context.read<Cart>().removeFromCart(product);
//                         },
//                       ),
//                       Text('${product.quantity}'),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {
//                           product.quantity++;
//                           context.read<Cart>().notifyListeners();
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Total Price: \$${cart.getTotalPrice()}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// final List<Product> products = [
//   Product(name: 'Product 1', price: 10.0, imageUrl: '', category: 'Category 1'),
//   Product(name: 'Product 2', price: 15.0, imageUrl: '', category: 'Category 2'),
//   Product(name: 'Product 3', price: 20.0, imageUrl: '', category: 'Category 3'),
// ];
//
// extension ContextExtension on BuildContext {
//   get Provider => null;
//
//   T read<T>() => Provider.of<T>(this, listen: false);
// }


void main() {
  Category smartphones = Category('Smartphones', 12.96);
  Category e9 = Category('e 9', 17.94);
  Category iPhone9 = Category('iPhone 9', 549.00);
  Category laptops = Category('Laptops', 11.02);
  Category JU = Category('JU:', 0.0);
  Category iPhoneX = Category('iPhone X', 899.00);
  List<Category> categories = [smartphones, e9, iPhone9, laptops, JU, iPhoneX];

  for (Category category in categories) {
    if (category.name == iPhoneX.name) {
      print('Name: ${category.productName}, Price: ${category.price}');
      print('Description: ${category.description}');
      print('Brand: ${category.brand}');
      print('Stock: ${category.stock}');
    }
  }
}

class Category {
  String name;
  double? percentage;
  String? productName;
  double? price;
  String? description;
  String? brand;
  int? stock;

  Category(this.name, [this.percentage, this.productName, this.price, this.description, this.brand, this.stock]);
}
