import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ShowDialog {
  void showErrorDialog(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Erreur de connexion'),
          content: Text(errorMessage),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void Dialog(
      BuildContext context, String errorMessage, String titre, String lien) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.rightSlide,
      title: "$titre",
      desc: "$errorMessage",
      btnOkOnPress: () {
        Title:
        Text(
          "Ok",
          style: TextStyle(fontSize: 20),
        );
        Navigator.pushNamed(context, '$lien');
      },
    )..show();
  }
}


// Exemple d'utilisation


