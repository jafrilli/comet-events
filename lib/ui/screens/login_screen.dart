import 'package:comet_events/ui/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  
  LoginScreen({Key key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: ClipRRect(
        borderRadius: BorderRadius.circular(22.0),
        child: Center(
          child: Container(
            height: SizeConfig.screenHeight/1.5,
            width: SizeConfig.screenWidth,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff6F4677),
                  Color(0xff6C356C),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
              borderRadius: BorderRadius.circular(22.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlutterLogo(
                  size: 120,
                ),
                CETextField(
                  controller: _emailController,
                  text: "Email",
                ),
                CETextField(
                  controller: _passwordController,
                  text: "Password",
                  obscure: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CETextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscure;

  const CETextField({Key key, 
  @required this.controller, 
  @required this.text, 
  this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: text,
      ),
    );
  }
}