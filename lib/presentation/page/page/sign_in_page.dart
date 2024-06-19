import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/page/page/componets/email_text_form_field.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 30,
            color: Colors.red,
          ),
          const EmailTextFormField(labelText: 'メールアドレスを入力してください'),
          ElevatedButton(
            onPressed: () {
              context.go('/home');
            },
            child: const Text(
              "ログイン",
            ),
          )
        ],
      ),
    );
  }
}
