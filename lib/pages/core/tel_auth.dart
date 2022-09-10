// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class TelAuth extends StatelessWidget {
  const TelAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Text('Continuez avec ce numero?',
                      style: Theme.of(context).textTheme.headline4),
                  AppTelField(
                    widget: Text('+228   '),
                    hint: 'Entrez votre numéro',
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/core/tel_confirm'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 0)),
                      child: Text('->')),
                  Text(
                      """NB: Nous allons vous enyoyer un code secret sur ce numero tout à l'heure. Voulez vous continuer avec celui ci, ou aimeriez vous le changer?
Vous pouriez modifier ce numero a tout temps""",
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
