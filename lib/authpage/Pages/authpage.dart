import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:weatther_station/home/pages/home.dart';
import 'package:weatther_station/loginOrRegister/Pages/loginOrRegister.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Home();
          } else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
