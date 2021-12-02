import 'package:flutter/material.dart';

import '../screens/product_detailed_screen.dart';
import 'package:provider/provider.dart';
import '../models/product_properties_m.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);

    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(
              ProductDetailedScreen.routeName,
              arguments: product.idProduct),
          child: Image.network(
            product.imageUrlProduct,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder:(ctx,product,child)=> IconButton(
              color: Theme.of(context).accentColor,
              onPressed: () {
                product.toggleFavoriteStatus();
              },
              icon: product.isFavoriteProduct
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border),
            ),
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          title: Text(
            product.titleProduct,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
