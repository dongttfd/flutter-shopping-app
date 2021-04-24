import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product';

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(
      context,
      listen: false,
    ).findById(ModalRoute.of(context).settings.arguments as String);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),     
    );
  }
}
