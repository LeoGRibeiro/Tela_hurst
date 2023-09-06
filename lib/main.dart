import 'package:flutter/material.dart';
import 'screens/account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hurst Capital',
      home: const AccountScreen(),
      routes: {
        AccountScreen.id: (context) => AccountScreen(),
        // Definição das rotas para a navegação
        //DadosPessoaisScreen.id: (context) => DadosPessoaisScreen(),
        //ChavePixScreen.id: (context) => ChavePixScreen(),
      },
    );
  }
}
