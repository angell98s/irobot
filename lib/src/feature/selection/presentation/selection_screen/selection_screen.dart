// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/constants/breakpoints.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/localization/string.hardcode.dart';
import 'package:irobot/src/routing/app_router.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  alegria(BuildContext context) => CheckBoxGeneral(
        title: 'Alegria'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Ilusión'.hardcoded),
          CheckBoxState(subtitle: 'Admiración'.hardcoded),
          CheckBoxState(subtitle: 'Amor'.hardcoded),
          CheckBoxState(subtitle: 'Éxtasis'.hardcoded),
        ],
      );
  tristeza(BuildContext context) => CheckBoxGeneral(
        title: 'Tristeza'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Soledad'.hardcoded),
          CheckBoxState(subtitle: 'Derrota'.hardcoded),
          CheckBoxState(subtitle: 'Desamor'.hardcoded),
          CheckBoxState(subtitle: 'Desamparo'.hardcoded),
        ],
      );
  ira(BuildContext context) => CheckBoxGeneral(
        title: 'Ira'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Rebeldía'.hardcoded),
          CheckBoxState(subtitle: 'Impaciencia'.hardcoded),
          CheckBoxState(subtitle: 'Rencor'.hardcoded),
          CheckBoxState(subtitle: 'Impotencia'.hardcoded),
        ],
      );
  miedo(BuildContext context) => CheckBoxGeneral(
        title: 'Miedo'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Inseguridad'.hardcoded),
          CheckBoxState(subtitle: 'Confusión'.hardcoded),
          CheckBoxState(subtitle: 'Horror'.hardcoded),
          CheckBoxState(subtitle: 'Terror'.hardcoded),
        ],
      );
  asco(BuildContext context) => CheckBoxGeneral(
        title: 'Asco'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Repulsión'.hardcoded),
          CheckBoxState(subtitle: 'Aversión'.hardcoded),
          CheckBoxState(subtitle: 'Desagrado'.hardcoded),
          CheckBoxState(subtitle: 'Incomodidad'.hardcoded),
        ],
      );
  sorpresa(BuildContext context) => CheckBoxGeneral(
        title: 'Sorpresa'.hardcoded,
        checkBoxState: [
          CheckBoxState(subtitle: 'Euforia'.hardcoded),
          CheckBoxState(subtitle: 'Asombro'.hardcoded),
          CheckBoxState(subtitle: 'Triunfo'.hardcoded),
          CheckBoxState(subtitle: 'Adoración'.hardcoded),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.select_recogn.toUpperCase())),
      body: CustomScrollView(
        slivers: [
          ResponsiveSliverCenter(
            padding: const EdgeInsets.all(Sizes.p16),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= Breakpoint.tablet) {
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                CheckBoxListWithTitle(
                                  checkBoxGeneral: alegria(context),
                                ),
                                CheckBoxListWithTitle(
                                  checkBoxGeneral: ira(context),
                                ),
                                CheckBoxListWithTitle(
                                  checkBoxGeneral: asco(context),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                CheckBoxListWithTitle(
                                    checkBoxGeneral: tristeza(context)),
                                CheckBoxListWithTitle(
                                    checkBoxGeneral: miedo(context)),
                                CheckBoxListWithTitle(
                                    checkBoxGeneral: sorpresa(context))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      CheckBoxListWithTitle(checkBoxGeneral: alegria(context)),
                      CheckBoxListWithTitle(checkBoxGeneral: tristeza(context)),
                      CheckBoxListWithTitle(checkBoxGeneral: ira(context)),
                      CheckBoxListWithTitle(checkBoxGeneral: miedo(context)),
                      CheckBoxListWithTitle(checkBoxGeneral: asco(context)),
                      CheckBoxListWithTitle(checkBoxGeneral: sorpresa(context))
                    ],
                  );
                }
              },
            ),
          ),
          ResponsiveSliverCenter(
            child: TextButton(
              child: Text('Siguiente'.hardcoded),
              onPressed: () => context.goNamed(AppRoute.fingerprint.name),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSingleCheckbox(CheckBoxState checkBoxState) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.red,
        value: checkBoxState.value,
        title: Text(checkBoxState.subtitle),
        onChanged: (value) => setState(
          () => checkBoxState.value = value!,
        ),
      );
}

class CheckBoxListWithTitle extends StatefulWidget {
  const CheckBoxListWithTitle({super.key, required this.checkBoxGeneral});

  final CheckBoxGeneral checkBoxGeneral;

  @override
  State<CheckBoxListWithTitle> createState() => _CheckBoxListWithTitleState();
}

class _CheckBoxListWithTitleState extends State<CheckBoxListWithTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() {
            widget.checkBoxGeneral.value = !widget.checkBoxGeneral.value;
          }),
          child: Text(
            widget.checkBoxGeneral.title,
            style: const TextStyle(
              // color: Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
        ),
        Visibility(
          visible: widget.checkBoxGeneral.value,
          child: ListView(
            shrinkWrap: true,
            children: [
              ...widget.checkBoxGeneral.checkBoxState
                  .map(buildSingleCheckbox)
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSingleCheckbox(CheckBoxState checkBoxState) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.red,
        value: checkBoxState.value,
        title: Text(checkBoxState.subtitle),
        onChanged: (value) => setState(
          () => checkBoxState.value = value!,
        ),
      );
}

class CheckBoxGeneral {
  CheckBoxGeneral({
    required this.title,
    this.value = false,
    required this.checkBoxState,
  });
  final String title;
  bool value;
  final List<CheckBoxState> checkBoxState;
}

class CheckBoxState {
  CheckBoxState({
    required this.subtitle,
    this.value = false,
  });
  final String subtitle;
  bool value;
}
