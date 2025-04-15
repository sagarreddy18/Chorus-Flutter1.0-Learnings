import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier{
  final List<Map<String,dynamic>> cart =[];

  void addItem(Map<String,dynamic> item){
    cart.add(item);
    notifyListeners();
  }

  void removeItem(Map<String,dynamic> item){
    cart.remove(item);
    notifyListeners();
  }

}