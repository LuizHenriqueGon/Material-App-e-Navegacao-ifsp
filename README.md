# 🎯 MaterialApp, Temas e Navegação - IFSP

<p align="center">
  <strong>Exploração avançada do widget MaterialApp, implementação de sistemas de temas dinâmicos (ThemeData) e gestão de rotas e navegação entre ecrãs no Flutter.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/VS%20Code-0078d7?style=for-the-badge&logo=visual-studio-code&logoColor=white" alt="VS Code">
  <img src="https://img.shields.io/badge/Status-Completo-green?style=for-the-badge" alt="Status: Completo.">
</p>

---

## 📖 Sobre o Projeto

Este repositório contém a resolução dos exercícios da **Aula 4** da disciplina de Desenvolvimento para Dispositivos Móveis (BRADEMO) no **IFSP - Câmpus Bragança Paulista**. O objetivo central foi aprender a configurar a identidade visual de uma aplicação de forma global e organizar a fluxo de utilizador através da navegação entre múltiplas páginas, utilizando as melhores práticas de arquitetura.

---

## ✨ Funcionalidades e Atividades

O projeto demonstra o uso de Temas e a lógica de um sistema de acesso (Login).

### Gestão de Temas:
- 🎨 **Exercício 1 (Tema Global):** Configuração de um `ThemeData` no `MaterialApp` para definir uma cor de fundo azul (`scaffoldBackgroundColor`) de forma centralizada.
- 🟡 **Exercício 2 (Sobrescrita de Tema):** Demonstração de como utilizar o widget `Theme` localmente para sobrescrever o tema global, alterando a cor de fundo para amarelo sem modificar as configurações principais do app.

### Navegação e Segurança:
- 🔐 **Exercício 3 (Sistema de Login):** Implementação de um fluxo de autenticação real.
  - **Validação:** Acesso permitido apenas para utilizador "admin" e senha "1234".
  - **Feedback:** Uso de `SnackBar` para informar erros de login.
  - **Navegação:** Uso de `Navigator.push` para entrar na HomeScreen e `Navigator.pop` para sair.
  - **Componentes:** Integração de `TextField` com controladores, imagens de rede e `FloatingActionButton`.

---

## 🏗️ Arquitetura Utilizada

Para o sistema de login, o projeto foi estruturado seguindo padrões de organização de ficheiros para facilitar a manutenção:

* 📂 **models/**: Representação das entidades de dados (ex: Classe `Login`).
* 📂 **screens/**: Ficheiros correspondentes às páginas completas da aplicação.
* 📂 **widgets/**: Componentes reutilizáveis (ex: O formulário de login isolado).

---

## 🚀 Conceitos Consolidados

* **ThemeData:** Centralização da UI (Cores, Fontes, Estilos de AppBar).
* **Navigator API:** Gestão da pilha de ecrãs do dispositivo.
* **TextEditingController:** Captura e manipulação de inputs do utilizador em tempo real.
* **ScaffoldMessenger:** Gestão de mensagens contextuais de sistema (SnackBars).

---

## 🛠️ Tecnologias Utilizadas

- **Framework:** Flutter SDK
- **Linguagem:** Dart
- **Design System:** Material Design 3
- **IDE:** Visual Studio Code

---

## ⚙️ Como Executar

### 1. Pré-requisitos
Ter o ambiente Flutter configurado na máquina e um emulador (Android/iOS) ou dispositivo físico ativo.

### 2. Execução
```bash
# Clone o repositório
git clone [https://github.com/SEU_USUARIO/material-app-e-navegacao-ifsp.git](https://github.com/LuizHenriqueGon/material-app-e-navegacao-ifsp.git)

# Aceda ao diretório do exercício desejado
cd "Exercicios 3/flutter_application_1"

# Obtenha os pacotes
flutter pub get

# Inicie a aplicação
flutter run
