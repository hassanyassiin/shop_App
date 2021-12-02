import 'package:flutter/material.dart';


import '../widgets/product_grid.dart';


enum FilterOption {
  Favorites,
  All,
}

class ProductsMenuScreen extends StatefulWidget {
  @override
  State<ProductsMenuScreen> createState() => _ProductsMenuScreenState();
}

class _ProductsMenuScreenState extends State<ProductsMenuScreen> {
  var _showOnlyFavorites =false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOption selectValue) {
              setState(() {
                if (selectValue == FilterOption.Favorites) {
                  _showOnlyFavorites = true;


                } else {
                  _showOnlyFavorites = false;

                }

              });

            },
            itemBuilder: (_) => const [
              PopupMenuItem(
                child: Text('only favorites'),
                value: FilterOption.Favorites,
              ),
              PopupMenuItem(
                child: Text('show All'),
                value: FilterOption.All,
              ),
            ],
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ProductGrid(_showOnlyFavorites),
    );
  }
}
