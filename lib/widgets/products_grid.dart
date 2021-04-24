import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping/providers/products.dart';
import 'package:shopping/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context, listen: false).items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) => ChangeNotifierProvider(
        create: (ct) => products[index],
        child: ProductItem(),
      ),
      itemCount: products.length,
    );
  }
}
