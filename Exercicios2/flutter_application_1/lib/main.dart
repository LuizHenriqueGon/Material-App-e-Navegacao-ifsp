import 'package:flutter/material.dart';

void main() {
  runApp(const Exercicio2());
}

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Exercício 2 - ThemeData Sobrescrito',
      
      // 1. TEMA GLOBAL (O inicial do exercício anterior, em azul)
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      
      // 2. SOBRESCREVENDO O TEMA
      // Envolvemos a nossa tela (Scaffold) com o widget Theme
      home: Theme(
        // Criamos o NOVO ThemeData com a cor amarela, que vai anular o azul global
        // apenas para os "filhos" deste widget.
        data: ThemeData(
          scaffoldBackgroundColor: Colors.yellow,
        ),
        child: Scaffold(
          appBar: AppBar(
            // Mantive o título igual ao da sua imagem de exemplo!
            title: const Text('Tema Azul'), 
          ),
          body: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                // O texto precisa ser preto para ter contraste com o amarelo
                color: Colors.black, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}