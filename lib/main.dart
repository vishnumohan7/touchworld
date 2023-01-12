import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchworld/src/app.dart';
import 'package:touchworld/src/providers/products_provider.dart';

void main() {

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductsProvider(),)
    ],
      child: const MyApp()));

}
