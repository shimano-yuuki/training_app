import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, required this.labelText});
  final String labelText;

  @override
  State<PasswordTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<PasswordTextFormField> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: const UnderlineInputBorder(),
        ),
        validator: (value) {
          (value) {
            if (value == null) {
              return 'パスワードを入力してください';
            }
            //TODO 一次的にTextFormFieldのExceptionはここで管理
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
