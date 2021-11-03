// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class COLOR {
  static const Color GREEN = Color(0xff12B719);
  static const Color YELLOW = Color(0xffEADF60);
  static const Color RED = Color(0xffFD0F0F);

  static const Color CREATE_TEXT = Color(0xff8e8e93);

  static const Color BACKGROUND = Color(0xffF8F4F4);
  static const Color RADIO_ACTIVE = Color(0xffF05E2B);

  static const Color AUTH_CLOSE = Color(0xff7c7c7c);
  static const Color AUTH_HINT = Color(0xff9498AE);
  static const Color AUTH_BACK = Color(0xffF3F4F8);
  static const Color AUTH_INDICATOR = Color(0xffF65959);
  static const Color AUTH_BUTTON = Color(0xff191F22);

  static const Color MENU_DISABLE = Color(0xffD2D2D2);
  static const Color MENU_ACTIVE = Color(0xffFD2C53);

  static const Color TEXT_BLACK = Color(0xff1C1D20);
  static const Color TEXT_GREY = Color(0xff707586);
  static const Color TEXT_BACK = Color(0xffEBEBEB);
  static const Color TEXT_GREY2 = Color(0xff919191);
}

bool isNumeric(String s) {
  if (s.isEmpty) {
    return false;
  }
  return double.tryParse(s) != null;
}

showAlertDialog(BuildContext context, String title, String description) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(description),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
  );
}
