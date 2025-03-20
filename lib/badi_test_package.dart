library badi_test_package;

import 'package:flutter/material.dart';

class CustomAlertBox {
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget widget,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(60)),
            ),
            content: Column(
              children: [
                widget,
                MaterialButton(
                  color: Colors.white30,
                  child: const Text('close alert'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}