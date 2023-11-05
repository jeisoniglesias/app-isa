import 'package:application/utils/global.colors.dart';
import 'package:application/views/witdgets/button.global.dart';
import 'package:application/views/witdgets/text.form.global.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  //_LoginViewState createState() => _LoginViewState();
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late Color myColor;
  late Size mediaSize;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: GlobalColors.mainColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/fondo.jpg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
          /* */
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 80, child: _logoTop()),
            Positioned(top: 200, child: _bodyView()),
          ],
        ),
      ),
    );
  }

  Widget _logoTop() {
    return SizedBox(
      width: mediaSize.width,
      height: mediaSize.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 130,
          )
        ],
      ),
      /*  child: Image.asset(
        'assets/images/logo.png',
        width: 200,
        height: 130,
      ), */
    );
  }

  Widget _bodyView() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _formLogin(),
        ),
      ),
    );
  }

  Widget _formLogin() {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text('Bienvenido',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GlobalColors.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 30),
        ...inputs(),
        const SizedBox(height: 25),
        _buildRememberForgot(),
        const SizedBox(height: 5),
        button(),
      ],
    );
  }

  List<Widget> inputs() {
    return [
      _buildGreyText('Correo electronico:'),
      TextFormGlobal(
        controller: emailController,
        text: 'Ingrese su correo electronico',
        textInputType: TextInputType.emailAddress,
        obscureText: false,
      ),
      const SizedBox(
        height: 10,
      ),
      _buildGreyText('Contraseña:'),
      TextFormGlobal(
          controller: passwordController,
          text: 'Ingrese su contraseña',
          textInputType: TextInputType.text,
          obscureText: true,
          isPassword: true),
    ];
  }

  Widget _buildGreyText(String text) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ));
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            _buildGreyText("Recuerdame."),
          ],
        ),
        TextButton(
            onPressed: () {}, child: _buildGreyText("Recuperar contraseña"))
      ],
    );
  }

  Widget button() {
    return ButtonGolbal(
      color: GlobalColors.mainColor,
      btnText: 'Iniciar Sesion',
      onPressed: () {
        hola();
      },
    );
  }

  hola() {
    // ignore: avoid_print
    print('hola');
  }
}
