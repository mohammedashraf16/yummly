import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yumly/features/home/models/restaurant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25,top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order!",style: TextStyle(fontSize: 16)),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Consumer<Restaurant>(builder: (context, restaurant, child) {
                  return Text(restaurant.displayCartReceipt(),style: TextStyle(fontSize: 16),);
                },),
              ),
            ),
            SizedBox(height: 25),
            Text("Estimated delivery time is : 4:10 PM")
          ],
        ),
      ),
    );
  }
}
