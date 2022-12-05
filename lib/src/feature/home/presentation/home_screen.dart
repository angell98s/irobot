import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/routing/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          RowHome(
            widgets: [
              Expanded(
                child: MenuButton(
                  text: context.loc.identi_percep,
                  number: '1',
                  onpressed: () =>
                      context.pushNamed(AppRoute.identification.name),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                size: 91,
              ),
              Expanded(
                child: MenuButton(
                  text: context.loc.select_recogn,
                  number: '2',
                  onpressed: () => context.pushNamed(AppRoute.selection.name),
                ),
              ),
            ],
          ),
          RowHome(
            widgets: [
              Expanded(
                child: MenuButton(
                  text: context.loc.regula_modify,
                  onpressed: () => context.pushNamed(AppRoute.regulate.name),
                  number: '4',
                ),
              ),
              const Icon(
                Icons.arrow_back,
                size: 91,
              ),
              Expanded(
                child: MenuButton(
                  text: context.loc.unders_assimi,
                  onpressed: () => context.pushNamed(AppRoute.understand.name),
                  number: '3',
                ),
              ),
            ],
          )
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 8),
                  borderRadius: BorderRadius.circular(12),
                ),

                padding: const EdgeInsets.all(20),
                // height: 100,
                // width: 100,
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
