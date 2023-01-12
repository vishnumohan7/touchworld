import 'package:flutter/material.dart';
import 'package:touchworld/src/pages/products_page.dart';
import 'package:touchworld/src/widgets/product_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: ProductsPage(),
    );
  }
}
