import 'package:flutter/material.dart';
import 'package:things_to_do/Pages/Auth/Widget/app_logo.dart';
import 'package:things_to_do/Pages/Auth/Widget/diveder_section.dart';
import 'package:things_to_do/Pages/Auth/Widget/email_password_fields.dart';
import 'package:things_to_do/Pages/Auth/Widget/social_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LogoApp(width: width),
            EmailPasswordFields(width: width, formKey: _formKey),
            DividerSections(width: width),
            SocialButtoms(width: width)
          ],
        ),
      ),
    );
  }
}
