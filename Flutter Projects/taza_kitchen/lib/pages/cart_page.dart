import 'package:taza_kitchen/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart Page',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: cart.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              radius: 30,
            ),
            trailing: IconButton(onPressed: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('Delete Item',style: Theme.of(context).textTheme.titleMedium,),
                    content: Text("Are you sure want to delete the Item?"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text('No',style: Theme.of(context).textTheme.bodyLarge)),
                      TextButton(onPressed: (){
                        Provider.of<CartProvider>(context,listen: false).removeItem(cartItem);
                        Navigator.of(context).pop();
                      }, child: Text('Yes',style: Theme.of(context).textTheme.bodyLarge))
                    ],
                  );
              },
              );
            },
                icon: Icon(Icons.delete,color: Colors.red,)),
            title: Text(cartItem['title'].toString(),style: Theme.of(context).textTheme.bodySmall,),

            // subtitle: Text(cartItem['price'].toString()), // optional
          );
        },
      ),
    );
  }
}
