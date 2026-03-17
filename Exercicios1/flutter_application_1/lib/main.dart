import 'package:flutter/material.dart';

void main() {
  runApp(const Exercicio1());
}

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Exercício 1 - ThemeData',
      
      // Aqui definimos o tema global da aplicação!
      theme: ThemeData(
        // Altera a cor de fundo padrão de TODAS as telas (Scaffolds) para azul
        scaffoldBackgroundColor: Colors.blue, 
        
        // Como o fundo é azul escuro, mudamos a cor padrão do texto para branco 
        // para garantir que fique legível (contraste)
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        
        // Opcional: Definir a cor da barra superior também no tema
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      
      // A nossa tela inicial
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tema Azul'),
        ),
        // Como a cor já foi definida no ThemeData, não precisamos colocar "color" aqui
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}