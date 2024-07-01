import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/colors.dart';
import 'package:training_app/presentation/page/page/widgets/email_text_form_field.dart';
import 'package:training_app/presentation/page/page/widgets/password_text_form_field.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: MyColor.darkgreen,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/figure_logo.png'),
            ),
            Form(
              key: _formKey,
              child: const Column(
                children: [
                  EmailTextFormField(labelText: 'e-mail'),
                  SizedBox(height: 10),
                  PasswordTextFormField(labelText: 'password'),
                ],
              ),
            ),
            const SizedBox(height: 30),
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
