import 'package:flutter/material.dart';

class EmailTextFormField extends StatefulWidget {
  const EmailTextFormField({super.key, required this.labelText});
  final String labelText;

  @override
  State<EmailTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<EmailTextFormField> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          (value) {
            if (value == null) {
              return 'パスワードを入力してくださいz';
            }
            // Password validation rules:
            // Minimum 8 characters, at least one uppercase letter, one lowercase letter, one number and one special character
            String pattern =
                r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
            RegExp regex = RegExp(pattern);
            if (!regex.hasMatch(value)) {
              return 'パスワードが8文字以上であることと、少なくとも1つの大文字、1つの小文字、1つの数字、および1つの特殊文字を含んでください';
            }
            return null;
          };
        });
  }
}
