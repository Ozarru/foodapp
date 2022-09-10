// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  Text('Bienvenue, connectez vous.',
                      style: Theme.of(context).textTheme.headline4),
                  AppTextField(
                      // title: title,
                      hint: 'Entrez votre email ou numero de telephone'),
                  AppTextField(
                      // title: title,
                      hint: 'Entrez votre mot de passe'),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/client/home'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 0)),
                      child: Text('->')),
                  Text(
                      "NB: By countining , i confirm that i have read and agree to the Trems & conditions and Privacy Policy, and that i authorize FoodApp to Use my pofile data.",
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
