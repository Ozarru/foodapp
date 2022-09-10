// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class TelRegister extends StatelessWidget {
  const TelRegister({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Entrez vos info personnelles',
                        style: Theme.of(context).textTheme.headline4),
                    AppTextField(
                        // title: title,
                        hint: 'Entrez votre nom'),
                    AppTextField(
                        // title: title,
                        hint: 'Entrez votre prénom'),
                    AppTextField(
                        // title: title,
                        hint: 'Entrez votre mot de passe'),
                    AppTextField(
                        // title: title,
                        hint: 'Confirmez votre mot de passe'),
                    ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/core/login'),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 0)),
                        child: Text('->')),
                    Text(
                        "NB: By countinuing, i confirm that i have read and agree to the Trems & conditions and Privacy Policy, and that i authorize FoodApp to Use my pofile data.",
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
