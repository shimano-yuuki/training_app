import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/page/page/widgets/email_text_form_field.dart';
import 'package:training_app/presentation/page/page/widgets/password_text_form_field.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              height: 30,
              color: Colors.red,
            ),
            Form(
              key: _formKey,
              child: const Column(
                children: [
                  EmailTextFormField(labelText: 'メールアドレスを入力してください'),
                  PasswordTextFormField(labelText: 'パスワードを入力してください'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.go('/home');
                }
              },
              child: const Text(
                "ログイン",
              ),
            )
          ],
        ),
      ),
    );
  }
}
