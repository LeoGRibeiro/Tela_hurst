import 'package:tela_hurst/widgets/custom_listTile.dart';
import 'package:flutter/material.dart';

// Lista de opções a ser usado na tela de Minha Conta
const kAccountOptions = <Widget>[
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
];

// Estilo texto padrão em opções
const kOptionsTextStyle = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 17,
);

// Estilo para texto AppBar
const kAppBarTextStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w300);
