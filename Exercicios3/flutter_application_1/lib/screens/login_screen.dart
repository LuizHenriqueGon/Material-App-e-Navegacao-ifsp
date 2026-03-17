import 'package:flutter/material.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      // SingleChildScrollView evita que a tela "quebre" (overflow) ao abrir o teclado
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // Imagem do Flutter via Network para facilitar
              Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png', // Logo do Flutter
                height: 150,
              ),
              const SizedBox(height: 40),
              
              // Inserimos o nosso componente de formulário aqui!
              const LoginForm(),
              
              const SizedBox(height: 50),
              const Text('Flutter By Example', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}