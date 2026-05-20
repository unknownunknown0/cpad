import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingUI(),
    );
  }
}

class ShoppingUI extends StatelessWidget {
  final List items = [
    {"name": "Shoes", "icon": Icons.shopping_bag, "color": Colors.red},
    {"name": "Watch", "icon": Icons.watch, "color": Colors.blue},
    {"name": "Laptop", "icon": Icons.laptop, "color": Colors.green},
    {"name": "Mobile", "icon": Icons.phone_android, "color": Colors.orange},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Shopping App"),
        backgroundColor: Colors.purple,
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: items[index]["color"],
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  items[index]["icon"],
                  size: 60,
                  color: Colors.white,
                ),

                SizedBox(height: 10),

                Text(
                  items[index]["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
