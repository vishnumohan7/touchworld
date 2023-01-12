import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:touchworld/src/models/products_model.dart';

class ApiService {
 Future<ProductsModel> getAllProducts() async {
    ProductsModel products = ProductsModel();
    try {
      var response = await http.get(
          Uri.parse("http://174.138.121.52:3009/v1/product/getAllProduct"));
      if (response.statusCode == 200) {
        products = ProductsModel.fromJson(jsonDecode(response.body));
      }
    } catch (ex) {
      print(ex);
    } finally {
      return products;
    }
  }
}
