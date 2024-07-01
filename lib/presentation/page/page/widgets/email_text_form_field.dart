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
        border: const UnderlineInputBorder(),
      ),
      validator: (value) {
        if (value == null) {
          return 'メールアドレスを入力してください';
        }
        //TODO 一次的にTextFormFieldのExceptionはここで管理
        String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
        RegExp regex = RegExp(pattern);
        if (!regex.hasMatch(value)) {
          return 'メールアドレスの形式が間違っています';
        }
        return null;
      },
    );
  }
}
