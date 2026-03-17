import 'package:flutter/material.dart';
import '../models/login.dart';
import '../screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Controladores para capturar o que o usuário digita
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _fazerLogin() {
    // Criamos o objeto Login com os dados digitados
    Login loginAtual = Login(
      usuario: _userController.text,
      senha: _passwordController.text,
    );

    // Verificação exigida no exercício
    if (loginAtual.usuario == 'admin' && loginAtual.senha == '1234') {
      // Sucesso: Navega para a HomeScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      // Falha: Exibe o SnackBar com a mensagem de erro
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Usuário ou senha incorretos!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input do Usuário
        TextField(
          controller: _userController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email / Usuário',
            prefixIcon: Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 16),
        
        // Input da Senha
        TextField(
          controller: _passwordController,
          obscureText: true, // Esconde a senha com "pontinhos"
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
          ),
        ),
        
        // Texto de "Esqueci a senha" (Apenas visual, como na imagem)
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text('Forgot Password?'),
          ),
        ),
        const SizedBox(height: 16),

        // Botão de Login
        SizedBox(
          width: double.infinity, // Faz o botão ocupar toda a largura
          height: 50,
          child: ElevatedButton(
            onPressed: _fazerLogin, // Chama a função de validação
            child: const Text('Login', style: TextStyle(fontSize: 18)),
          ),
        ),
      ],
    );
  }
}