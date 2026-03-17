import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const Exercicio3App());
}

class Exercicio3App extends StatelessWidget {
  const Exercicio3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(), // Define a tela inicial
    );
  }
}