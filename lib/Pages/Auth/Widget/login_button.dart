
import 'package:flutter/material.dart';
import 'package:things_to_do/utils/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.width,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey, super(key: key);

  final double width;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: MaterialButton(
        minWidth: width - width * 0.2,
        height: width * 0.15,
        color: purple1,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
          }
        },
        child: const Text('Login',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
