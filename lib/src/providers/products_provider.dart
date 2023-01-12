import 'package:flutter/cupertino.dart';
import 'package:touchworld/src/helpers/api_service.dart';
import 'package:touchworld/src/models/products_model.dart';

class ProductsProvider with ChangeNotifier {
  ApiService apiService = ApiService();

  Future<ProductsModel> getAllProducts() async {
    ProductsModel products = await apiService.getAllProducts();
    notifyListeners();
    return products;
  }
}
