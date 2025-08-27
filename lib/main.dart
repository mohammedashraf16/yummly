import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yumly/features/auth/login_or_register.dart';
import 'package:yumly/features/home/models/restaurant.dart';
import 'package:yumly/features/theme/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ChangeNotifierProvider(create: (context) => Restaurant(),),
    ],
    child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
    );
  }
}
