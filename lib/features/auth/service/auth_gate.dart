import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yumly/features/auth/login_or_register.dart';
import 'package:yumly/features/home/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot) {
        if(snapshot.hasData){
          return HomePage();
        }
        if(snapshot.hasError){
          return ScaffoldMessenger(child: AlertDialog(
            title: Text("Error"),
            content: Text(snapshot.error.toString()),
          ));
        }
        else{
          return LoginOrRegister();
        }
      },),
    );
  }
}
