import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yumly/core/components/my_button.dart';
import 'package:yumly/features/cart/widgets/my_cart_tile.dart';
import 'package:yumly/features/home/models/restaurant.dart';
import 'package:yumly/features/payment/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            actions: [IconButton(onPressed: () {
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text("Are you sure you want to clear the cart?"),
                actions: [
                  TextButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                    restaurant.clearCart();
                  }, child: Text("Yes")),
                ],
              ),);
            }, icon: Icon(Icons.delete))],
            title: Text("Cart"),
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                   userCart.isEmpty?Expanded(child: Center(child: Text("Cart is empty...",style: TextStyle(
                     fontSize: 18,
                     color: Theme.of(context).colorScheme.inversePrimary
                   ),))): Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return MyCartTile(cartItem: cartItem);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              MyButton(text: "Go to checkout",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage(),));
              },),
              SizedBox(height: 25,)
            ],
          ),
        );
      },
    );
  }
}
