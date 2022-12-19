import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/common_widgets/responsive_two_column_layout.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/constants/breakpoints.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/routing/app_router.dart';

final dialogProvider = StateProvider<bool>((ref) => false);

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!ref.watch(dialogProvider) && document.cookie!.isEmpty) {
        showDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Colors.white,
          builder: (context) => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Locale locale = const Locale('es');
                  ref.read(dialogProvider.notifier).update((state) => true);
                  ref
                      .read(localizationProvider.notifier)
                      .update((state) => locale);
                  document.cookie = locale.toLanguageTag();
                  Navigator.pop(context);
                },
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/spain.png',
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  Locale locale = const Locale('en');
                  ref.read(dialogProvider.notifier).update((state) => true);
                  ref
                      .read(localizationProvider.notifier)
                      .update((state) => locale);
                  document.cookie = locale.toLanguageTag();
                  Navigator.pop(context);
                },
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/english.png',
                  ),
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     ref.read(dialogProvider.notifier).update((state) => true);
              //     ref
              //         .read(localizationProvider.notifier)
              //         .update((state) => const Locale('es'));
              //     Navigator.pop(context);
              //   },
              //   child: const Text('Accept'),
              // ),
              // TextButton(
              //   onPressed: () {
              //     ref.read(dialogProvider.notifier).update((state) => true);
              //     ref
              //         .read(localizationProvider.notifier)
              //         .update((state) => const Locale('es'));
              //     Navigator.pop(context);
              //   },
              //   child: const Text('Accept'),
              // ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget p3 = MenuButton(
      number: '3',
      text: context.loc.unders_assimi,
      onpressed: () => context.pushNamed(AppRoute.understand.name),
    );
    Widget p4 = MenuButton(
      number: '4',
      text: context.loc.regula_modify,
      onpressed: () => context.pushNamed(AppRoute.regulate.name),
    );
    print(ref.watch(dialogProvider));
    return !ref.watch(dialogProvider) && document.cookie!.isEmpty
        ? const Scaffold()
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 123, 201, 146),
            body: CustomScrollView(
              slivers: [
                ResponsiveSliverCenter(
                  padding: const EdgeInsets.all(Sizes.p16),
                  child: ResponsiveTwoColumnLayout(
                    startContent: MenuButton(
                      number: '1',
                      text: context.loc.identi_percep,
                      onpressed: () =>
                          context.pushNamed(AppRoute.identification.name),
                    ),
                    icon: Icons.arrow_forward,
                    endContent: MenuButton(
                      number: '2',
                      text: context.loc.select_recogn,
                      onpressed: () =>
                          context.pushNamed(AppRoute.selection.name),
                    ),
                  ),
                ),
                ResponsiveSliverCenter(
                  child: ResponsiveTwoColumnLayout(
                    startContent: Container(),
                    endContent: Center(
                      child:
                          MediaQuery.of(context).size.width >= Breakpoint.tablet
                              ? const Icon(Icons.arrow_downward, size: 91)
                              : null,
                    ),
                  ),
                ),
                ResponsiveSliverCenter(
                  padding: const EdgeInsets.all(Sizes.p16),
                  child: ResponsiveTwoColumnLayout(
                    startContent:
                        MediaQuery.of(context).size.width >= Breakpoint.tablet
                            ? p4
                            : p3,
                    // MenuButton(
                    //   number: '4',
                    //   text: context.loc.regula_modify,
                    //   onpressed: () => context.pushNamed(AppRoute.regulate.name),
                    // ),
                    icon: Icons.arrow_back,
                    endContent:
                        //  MenuButton(
                        //   number: '3',
                        //   text: context.loc.unders_assimi,
                        //   onpressed: () => context.pushNamed(AppRoute.understand.name),
                        // ),
                        MediaQuery.of(context).size.width >= Breakpoint.tablet
                            ? p3
                            : p4,
                  ),
                ),
              ],
            ),
          );
  }
}

class RowHome extends StatelessWidget {
  const RowHome({
    super.key,
    required this.widgets,
  });

  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: widgets,
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.text,
    required this.number,
    required this.onpressed,
  });

  final String text;
  final String number;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onpressed(),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(15),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 8),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      number.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 38),
                    ),
                    Text(
                      text.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
