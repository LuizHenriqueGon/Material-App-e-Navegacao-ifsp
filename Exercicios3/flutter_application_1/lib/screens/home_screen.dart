import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Bem-vindo, admin!\nLogin realizado com sucesso. 🎉',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      // Uso do FloatingActionButton para voltar à tela de Login
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pop remove a tela atual e volta para a anterior (Login)
          Navigator.pop(context); 
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.logout, color: Colors.white),
      ),
    );
  }
}