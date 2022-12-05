import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/localization/string.hardcode.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class IdentificationScreen extends StatefulWidget {
  const IdentificationScreen({super.key});

  @override
  State<IdentificationScreen> createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  bool active = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        active = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.identi_percep.toUpperCase())),
      body: ResponsiveCenter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('Estado del chip'.hardcoded),
                    gapW8,
                    active
                        ? const Icon(Icons.check)
                        : const CupertinoActivityIndicator(),
                  ],
                ),
                Row(
                  children: [
                    Text('Alarma automatica'.hardcoded),
                    gapW8,
                    active
                        ? const Icon(Icons.check)
                        : const CupertinoActivityIndicator(),
                  ],
                ),
                Text('Sonido de la alarma'.hardcoded),
                SfSlider(
                  min: 0.0,
                  max: 100.0,
                  value: active ? 60 : 0,
                  showDividers: true,
                  tooltipShape: const SfPaddleTooltipShape(),
                  thumbIcon: active
                      ? const Center(child: Text('60'))
                      : const CupertinoActivityIndicator(),
                  showTicks: true,
                  showLabels: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {},
                ),
                gapH16,
                Row(
                  children: [
                    Text('Señal encontrada'.hardcoded),
                    gapW8,
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        // borderRadius:
                        //     const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: const Text('1'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
