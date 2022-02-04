
import 'package:flutter/material.dart';
import 'package:things_to_do/Pages/Auth/Widget/login_button.dart';
import 'package:things_to_do/utils/colors.dart';

class EmailPasswordFields extends StatelessWidget {
  const EmailPasswordFields({
    Key? key,
    required this.width,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final double width;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    var textFormField1 = TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.person),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: purple1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        hintText: "Email",
      ),
      obscureText: false,
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value!.isEmpty &&
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return "Enter valid email";
        }
        return value;
      },
    );
    var textFormField2 = TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.lock),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: purple1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        hintText: "Password",
      ),
      obscureText: false,
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value!.isEmpty &&
            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                .hasMatch(value)) {
          return "errorResponse";
        }
        return value;
      },
    );
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: textFormField1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: textFormField2,
        ),
        LoginButton(width: width, formKey: _formKey),
      ],
    );
  }
}
