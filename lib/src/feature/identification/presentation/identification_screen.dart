import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/localization/string.hardcode.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class IdentificationScreen extends StatelessWidget {
  const IdentificationScreen({super.key});

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
                    const Icon(Icons.check)
                  ],
                ),
                Row(
                  children: [
                    Text('Alarma automatica'.hardcoded),
                    gapW8,
                    const Icon(Icons.check)
                  ],
                ),
                Text('Sonido de la alarma'.hardcoded),
                SfSlider(
                  min: 0.0,
                  max: 100.0,
                  value: 60,
                  showDividers: true,
                  // shouldAlwaysShowTooltip: true,
                  tooltipShape: const SfPaddleTooltipShape(),
                  thumbIcon: const Center(child: Text('60')),
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
