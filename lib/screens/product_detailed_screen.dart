import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailedScreen extends StatelessWidget {
  static const routeName = '/product-detailed';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final providerUserId = Provider.of<Products>(context,listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(providerUserId.titleProduct),
      ),
      body: Container(),
    );
  }
}
