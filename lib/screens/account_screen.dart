import 'package:flutter/material.dart';
import 'package:tela_hurst/widgets/custom_listTile.dart';

class AccountScreen extends StatelessWidget {
  static const id =
      'account_screen'; // Endereço que será usado para a navegação entre páginas
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                // Ação para sair da tela Minha Conta
                //Navigator.pop(context);
              },
            ),
            const Text(
              'Minha Conta',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: const <CustomListTile>[
                CustomListTile(title: 'Dados Pessoais'),
                CustomListTile(
                  title: 'Meu número',
                  subtitle: '(**) *****-1234',
                ),
                CustomListTile(
                  title: 'Meu e-mail',
                  subtitle: 'j******@g***l.com',
                ),
                CustomListTile(title: 'Chave Pix'),
                CustomListTile(title: 'Dados Patrimoniais'),
                CustomListTile(title: 'Dados bancários'),
                CustomListTile(title: 'Biometria'),
                CustomListTile(title: 'Alterar endereço'),
                CustomListTile(title: 'Alterar Senha'),
                CustomListTile(title: 'Desativar Conta'),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xffF5D882),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              child: const Text(
                'Salvar',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                // Ação para salvar as informações
                //Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
