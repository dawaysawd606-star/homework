import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListing(),
    );
  }
}

class ProductListing extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "title": "iPhone",
      "subtitle": "iPhone is the stylist phone ever",
      "price": "1000",
      "color": Colors.purple,
    },
    {
      "title": "Pixel",
      "subtitle": "Pixel is the most featureful phone ever",
      "price": "800",
      "color": Colors.blue,
    },
    {
      "title": "Laptop",
      "subtitle": "Laptop is most productive development tool",
      "price": "2000",
      "color": Colors.green,
    },
    {
      "title": "Tablet",
      "subtitle": "Tablet is the most useful device ever for meeting",
      "price": "1500",
      "color": Colors.yellow[700],
    },
    {
      "title": "Pendrive",
      "subtitle": "Pendrive is the stylish device",
      "price": "100",
      "color": Colors.brown,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Listing"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: products[index]["color"],
                  alignment: Alignment.center,
                  child: Text(
                    products[index]["title"].toLowerCase(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]["title"],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(products[index]["subtitle"]),
                        SizedBox(height: 5),
                        Text("Price: ${products[index]["price"]}"),
                      ],
                    ),
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
