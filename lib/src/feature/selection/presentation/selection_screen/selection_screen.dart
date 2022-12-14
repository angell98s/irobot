// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/constants/breakpoints.dart';
import 'package:irobot/src/constants/text_styles.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/routing/app_router.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  alegria(BuildContext context) => CheckBoxGeneral(
        title: context.loc.joy,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.delusion),
          CheckBoxState(subtitle: context.loc.admiration),
          CheckBoxState(subtitle: context.loc.love),
          CheckBoxState(subtitle: context.loc.ecstasy),
        ],
      );
  tristeza(BuildContext context) => CheckBoxGeneral(
        title: context.loc.sadness,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.loneliness),
          CheckBoxState(subtitle: context.loc.defeat),
          CheckBoxState(subtitle: context.loc.heartbreak),
          CheckBoxState(subtitle: context.loc.abandonment),
        ],
      );
  ira(BuildContext context) => CheckBoxGeneral(
        title: context.loc.rage,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.rebellion),
          CheckBoxState(subtitle: context.loc.impatience),
          CheckBoxState(subtitle: context.loc.resentment),
          CheckBoxState(subtitle: context.loc.impatience),
        ],
      );
  miedo(BuildContext context) => CheckBoxGeneral(
        title: context.loc.scary,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.unsafety),
          CheckBoxState(subtitle: context.loc.confusion),
          CheckBoxState(subtitle: context.loc.horror),
          CheckBoxState(subtitle: context.loc.terror),
        ],
      );
  asco(BuildContext context) => CheckBoxGeneral(
        title: context.loc.disgust,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.repulsion),
          CheckBoxState(subtitle: context.loc.aversion),
          CheckBoxState(subtitle: context.loc.repugnance),
          CheckBoxState(subtitle: context.loc.discomfort),
        ],
      );
  sorpresa(BuildContext context) => CheckBoxGeneral(
        title: context.loc.surprise,
        checkBoxState: [
          CheckBoxState(subtitle: context.loc.euphoria),
          CheckBoxState(subtitle: context.loc.astonishment),
          CheckBoxState(subtitle: context.loc.triumph),
          CheckBoxState(subtitle: context.loc.devotion),
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
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(context.loc.next),
                  onPressed: () => context.goNamed(AppRoute.fingerprint.name),
                ),
              ],
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
            style: AppTextStyles.h2(context).copyWith(
              decoration: TextDecoration.underline,
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
        title: Text(
          checkBoxState.subtitle,
          style: AppTextStyles.h3(context).copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
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
