import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yumly/features/home/models/cart_item.dart';
import 'package:yumly/features/home/models/restaurant.dart';
import 'package:yumly/features/home/widgets/my_quantity_selector.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(cartItem.food.imagePath, height: 100),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name,maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text('\$ ${cartItem.food.price}'),
                  ],
                ),
                Spacer(),
                MyQuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(
                      cartItem.food,
                      cartItem.selectedAddons,
                    );
                  },
                ),
              ],
            ),

            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                padding: EdgeInsets.only(left: 10,bottom: 10,right: 10,top: 8),
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name),
                              Text('(\$ ${addon.price})',style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),),
                            ],
                          ),
                          onSelected: (value) {},
                          shape:StadiumBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            )
                          ) ,

                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
