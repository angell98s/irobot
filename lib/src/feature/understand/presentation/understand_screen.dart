import 'package:flutter/material.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';

class UnderstandScreen extends StatelessWidget {
  const UnderstandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.unders_assimi.toUpperCase())),
    );
  }
}
