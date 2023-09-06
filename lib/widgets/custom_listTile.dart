import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rota;

  const CustomListTile(
      {super.key, required this.title, this.subtitle = '', this.rota = ''});
  // O "subtitle" é opcional pois nem todos os botões irão ter está informação secundária,
  // O parâmetro "rota" serve para atribuir a tela que será aberta ao clicar no botão.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 9.0), // Para separar o texto do Divider
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 17,
                  ),
                ),
                Row(
                  // Foram utilizadas duas rows para alinhar o subtitulo a esquerda
                  children: [
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
      onTap: () {
        // Onde o parâmetro "rota" entraria definir a tela à ser aberta
        //Navigator.pushNamed(context, rota);
      },
    );
  }
}
