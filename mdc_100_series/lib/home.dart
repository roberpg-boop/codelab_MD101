import 'package:flutter/material.dart';
import 'supplemental/asymmetric_view.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(category),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
