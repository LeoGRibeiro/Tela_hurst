import 'package:flutter/material.dart';
import 'package:tela_hurst/constants.dart';
import 'package:tela_hurst/widgets/save_button.dart';
import 'package:tela_hurst/widgets/appBar_padrao.dart';

class AccountScreen extends StatelessWidget {
  static const id =
      'account_screen'; // Endereço que será usado para a navegação entre páginas
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPattern(
        textTitle: 'Minha Conta',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: kAccountOptions, // Lista de opções da tela
            ),
            const SaveButton() // Botão de salvar abaixo
          ],
        ),
      ),
    );
  }
}
