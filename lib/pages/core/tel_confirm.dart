// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class TelConfirm extends StatelessWidget {
  const TelConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tel = '9799861';
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.arrow_back),
                )),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Entrez le code sms secret',
                      style: Theme.of(context).textTheme.headline4),
                  Text("nous l'avons envoyer à $tel",
                      style: Theme.of(context).textTheme.bodySmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppPinField(),
                      AppPinField(),
                      AppPinField(),
                      AppPinField(),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/core/tel_register'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 0)),
                      child: Text('->')),
                  Text(
                      """NB: Si vous n'avez pas reçu le code sms, clickez en dessous pour qu'on vous le renvoie.""",
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
