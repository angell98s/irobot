import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/routing/app_router.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.select_recogn.toUpperCase())),
      body: Center(
        child: TextButton(
          onPressed: () => context.pushNamed(AppRoute.fingerprint.name),
          child: const Text('Finger'),
        ),
      ),
    );
  }
}
