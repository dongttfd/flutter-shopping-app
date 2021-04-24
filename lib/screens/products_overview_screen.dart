import 'package:flutter/material.dart';

import 'package:shopping/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold2 = Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductsGrid(),
    );
    var scaffold = scaffold2;
    return scaffold;
  }
}
