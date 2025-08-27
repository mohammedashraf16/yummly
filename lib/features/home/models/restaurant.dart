import 'package:flutter/material.dart';
import 'package:yumly/features/home/models/food.dart';

class Restaurant with ChangeNotifier{
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic CheeseBurger",
      description:
          "A timeless favorite made with a juicy grilled beef patty topped with melted cheese, fresh lettuce, tomato, onions, and pickles, all stacked inside a soft, toasted bun. Simple, delicious, and satisfying.",
      imagePath: "assets/images/burger/cheese_burger.png",
      price: 8.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "A smoky delight featuring a juicy beef patty layered with crispy bacon, melted cheese, and tangy barbecue sauce, served in a toasted bun for the perfect balance of sweet, savory, and smoky flavors.",
      imagePath: "assets/images/burger/bbq_burger.png",
      price: 10.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty plant-based patty stacked with fresh lettuce, tomato, onions, and pickles, topped with creamy sauce and served in a toasted bun — a wholesome, flavorful alternative to the classic burger.",
      imagePath: "assets/images/burger/vege_burger.png",
      price: 9.49,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spreed", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A tropical twist with a juicy beef patty, melted cheese, grilled pineapple, crisp lettuce, and tangy sauce, all inside a toasted bun for a sweet and savory island flavor.",
      imagePath: "assets/images/burger/aloha_burger.png",
      price: 9.49,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A bold creation featuring a juicy beef patty topped with creamy blue cheese, caramelized onions, and fresh greens, served on a toasted bun for a rich, tangy flavor experience.",
      imagePath: "assets/images/burger/bluemoon_burger.png",
      price: 9.49,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sauteed Mushroom", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),

    // Salad
    Food(
      name: "Caesar Salad",
      description:
      "A classic mix of crisp romaine lettuce, crunchy croutons, and parmesan cheese, tossed in a creamy Caesar dressing for a refreshing and savory bite.",
      imagePath: "assets/images/salad/caeser_salad.png",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "Extra Parmesan", price: 0.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
      "A Mediterranean favorite with fresh cucumbers, tomatoes, red onions, olives, and feta cheese, served with a light olive oil and herb dressing.",
      imagePath: "assets/images/salad/greek_salad.png",
      price: 8.49,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
        Addon(name: "Pita Bread", price: 1.49),
        Addon(name: "Extra Feta", price: 1.29),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
      "A healthy and protein-packed salad with fluffy quinoa, fresh veggies, herbs, and a light lemon vinaigrette for a wholesome, refreshing flavor.",
      imagePath: "assets/images/salad/quinoa_salad.png",
      price: 9.49,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "Roasted Chickpeas", price: 1.49),
        Addon(name: "Feta Cheese", price: 1.29),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
      "A crisp and colorful mix of greens, carrots, red cabbage, and crunchy noodles, tossed in a sesame-ginger dressing for a sweet and savory Asian-inspired flavor.",
      imagePath: "assets/images/salad/asiansesamne_salad.png",
      price: 8.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
        Addon(name: "Tofu", price: 1.99),
        Addon(name: "Extra Sesame Dressing", price: 0.99),
      ],
    ),
    Food(
      name: "Southwest Chicken Salad",
      description:
      "A zesty salad with grilled chicken, black beans, corn, tomatoes, and crispy tortilla strips, topped with a creamy southwest dressing for a bold flavor kick.",
      imagePath: "assets/images/salad/southwest_salad.png",
      price: 9.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.99),
        Addon(name: "Extra Chicken", price: 2.99),
        Addon(name: "Cheddar Cheese", price: 1.29),
      ],
    ),

    // Sides
    Food(
      name: "Sweet Potato Fries",
      description:
      "Crispy golden sweet potato fries with a naturally sweet flavor, served hot and perfectly seasoned.",
      imagePath: "assets/images/sides/sweet_potato_side.png",
      price: 4.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Spicy Mayo", price: 0.99),
        Addon(name: "Garlic Aioli", price: 1.29),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
      "Crispy, golden-battered onion rings with a crunchy bite and sweet onion flavor, perfect for dipping.",
      imagePath: "assets/images/sides/onion_rings_side.png",
      price: 4.49,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 0.99),
        Addon(name: "Cheese Sauce", price: 1.29),
        Addon(name: "Extra Portion", price: 2.49),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
      "Toasted bread infused with garlic butter and herbs, served warm and crispy with a soft center.",
      imagePath: "assets/images/sides/garlic_bread_side.png",
      price: 3.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Topping", price: 0.99),
        Addon(name: "Extra Garlic Butter", price: 0.79),
        Addon(name: "Marinara Dip", price: 1.29),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
      "Crispy sweet potato fries topped with melted cheese, crispy bacon bits, and a drizzle of creamy sauce for a flavorful snack.",
      imagePath: "assets/images/sides/loadedfries_side.png",
      price: 6.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapenos", price: 0.99),
        Addon(name: "Extra Cheese", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
      "Golden, bite-sized pieces of creamy mac & cheese coated in a crispy crust — crunchy outside, cheesy inside.",
      imagePath: "assets/images/sides/mac_side.png",
      price: 5.49,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Ketchup", price: 0.79),
        Addon(name: "Cheese Sauce", price: 1.29),
      ],
    ),

    // Desserts
    Food(
      name: "Baklava",
      description:
      "A rich Middle Eastern pastry made of flaky layers filled with chopped nuts and sweetened with honey or syrup.",
      imagePath: "assets/images/desserts/baklava.png",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Syrup", price: 0.79),
        Addon(name: "Pistachio Topping", price: 1.29),
        Addon(name: "Vanilla Ice Cream Scoop", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
      "A creamy, smooth dessert with a buttery biscuit base, baked to perfection and often topped with fruit or syrup.",
      imagePath: "assets/images/desserts/cheesecake.png",
      price: 5.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.99),
        Addon(name: "Chocolate Drizzle", price: 0.99),
        Addon(name: "Whipped Cream", price: 0.79),
      ],
    ),
    Food(
      name: "Chocolate Cake",
      description:
      "A moist and decadent chocolate sponge layered with rich chocolate frosting — a timeless indulgence.",
      imagePath: "assets/images/desserts/chocolate_cake.png",
      price: 5.49,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream Scoop", price: 1.99),
        Addon(name: "Extra Chocolate Sauce", price: 0.99),
        Addon(name: "Whipped Cream", price: 0.79),
      ],
    ),
    Food(
      name: "Ice Cream",
      description:
      "Creamy, refreshing scoops of ice cream available in a variety of classic flavors.",
      imagePath: "assets/images/desserts/ice_cream.png",
      price: 3.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chocolate Syrup", price: 0.79),
        Addon(name: "Sprinkles", price: 0.49),
        Addon(name: "Extra Scoop", price: 1.49),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
      "A classic Italian dessert made with espresso-soaked ladyfingers, mascarpone cream, and a dusting of cocoa powder.",
      imagePath: "assets/images/desserts/tiramisu.png",
      price: 6.49,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cocoa Dust", price: 0.49),
        Addon(name: "Espresso Shot", price: 1.49),
        Addon(name: "Whipped Cream", price: 0.79),
      ],
    ),

    // Drinks
    Food(
      name: "Apple Drink",
      description:
      "A refreshing chilled apple juice with a crisp and naturally sweet flavor.",
      imagePath: "assets/images/drinks/apple_drink.png",
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 0.29),
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Lemon Slice", price: 0.49),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
      "Freshly squeezed lemonade with a tangy and refreshing citrus kick.",
      imagePath: "assets/images/drinks/lemonade.png",
      price: 2.79,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Honey", price: 0.79),
        Addon(name: "Extra Lemon", price: 0.49),
      ],
    ),
    Food(
      name: "Mango Drink",
      description:
      "A tropical favorite made from ripe, juicy mangoes for a smooth and sweet flavor.",
      imagePath: "assets/images/drinks/mango.png",
      price: 3.49,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 0.29),
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Lime Twist", price: 0.49),
      ],
    ),
    Food(
      name: "Orange Drink",
      description:
      "Classic fresh-squeezed orange juice, bright and full of vitamin C.",
      imagePath: "assets/images/drinks/orange.png",
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Pulp", price: 0.49),
        Addon(name: "Ice Cubes", price: 0.29),
        Addon(name: "Mint Leaves", price: 0.49),
      ],
    ),
    Food(
      name: "Pineapple Drink",
      description:
      "A refreshing tropical juice with the perfect balance of sweet and tangy pineapple flavor.",
      imagePath: "assets/images/drinks/pineapple.png",
      price: 3.29,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Coconut Splash", price: 0.99),
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Ice Cubes", price: 0.29),
      ],
    ),

  ];

  List<Food> get menu => _menu;
}
