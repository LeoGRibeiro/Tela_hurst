import 'package:flutter/material.dart';
import 'package:tela_hurst/constants.dart';

class AppBarPattern extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPattern({super.key, required this.textTitle})
      : preferredSize = const Size.fromHeight(80);

  @override
  final Size preferredSize;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 4,
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(
        textTitle,
        style: kAppBarTextStyle,
      ),
    );
  }
}
