

import 'package:flutter/material.dart';



class Product  with ChangeNotifier{
  final String idProduct;
  final String titleProduct;
  final String descriptionProduct;
  final double priceProduct;
  final String imageUrlProduct;
  bool isFavoriteProduct;// or bool? isFavorite we can do

  Product(
      {
      required this.idProduct,
      required this.titleProduct,
      required this.descriptionProduct,
      required this.priceProduct,
      required this.imageUrlProduct,
       this.isFavoriteProduct=false
      });

  void toggleFavoriteStatus(){
    isFavoriteProduct =!isFavoriteProduct;
    notifyListeners();
  }
}
