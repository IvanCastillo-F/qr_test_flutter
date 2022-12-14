import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class Global {

  static void mensaje(BuildContext context, String mensaje, String? titulo 
  ,{Color backgroundColorCustom = const Color.fromARGB(255, 209, 60, 184)}) {
    Flushbar(
      title: titulo,
      titleColor: Colors.white,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
      message: mensaje,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: backgroundColorCustom,
      boxShadows: const [
        BoxShadow(
            color: Color.fromARGB(255, 48, 112, 186),
            offset: Offset(0.0, 2.0),
            blurRadius: 3.0)
      ],
      backgroundGradient:
           LinearGradient(colors: [backgroundColorCustom, Color.fromARGB(255, 88, 12, 98)]),
      isDismissible: false,
      duration: const Duration(seconds: 4),
    ).show(context);
  }
}