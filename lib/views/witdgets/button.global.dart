import 'package:flutter/material.dart';

class ButtonGolbal extends StatelessWidget {
  const ButtonGolbal(
      {super.key,
      required this.color,
      required this.btnText,
      required this.onPressed});

  final Color color;
  final String btnText;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 20,
          shadowColor: color,
          minimumSize: const Size.fromHeight(60),
        ),
        child: Text(btnText));
    /* onTap: () {
          // ignore: avoid_print
          print('Login');
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 7,
                  //offset: Offset(0, 5),
                )
              ]),
          child: Text(
            btnText,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        )); */
  }
}
