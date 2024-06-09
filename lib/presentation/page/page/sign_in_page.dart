import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
          ElevatedButton(
            onPressed: () {
              context.go('/home');
            },
            child: const Text(
              "Go To About Screen",
            ),
          )
        ],
      ),
    );
  }
}
