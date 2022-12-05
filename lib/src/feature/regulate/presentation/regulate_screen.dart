import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/localization/string.hardcode.dart';

class RegulateScreen extends StatelessWidget {
  const RegulateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.regula_modify.toUpperCase())),
      body: ResponsiveCenter(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Solicitud de video'.hardcoded),
                  gapH16,
                  const Text('Estrategias afsdasdkasl'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
