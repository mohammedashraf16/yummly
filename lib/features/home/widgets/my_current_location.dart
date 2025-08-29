import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yumly/features/home/models/restaurant.dart';

class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});

  final TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Your location"),
        content: TextField(
          controller: textController,
          decoration: InputDecoration(hintText: "Enter address..."),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              String newAddress = textController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
