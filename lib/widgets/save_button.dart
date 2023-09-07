import'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}
