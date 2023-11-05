import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
      {Key? key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscureText,
      this.isPassword = false})
      : super(key: key);

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool isPassword;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      /*  decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 7,
            //offset: Offset(0, 5),
          )
        ],
      ), */
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          contentPadding: const EdgeInsets.all(0),
          suffixIcon: isPassword
              ? const Icon(Icons.remove_red_eye)
              : const Icon(Icons.done),
        ),
      ),
    );
    /*  child:TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'Enter your email...',
      ),
    ) */
  }
}
