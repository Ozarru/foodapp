// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/foods/food3.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: Colors.black.withOpacity(.2),
            child: Container(
              child: Column(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text('Bienvenue',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white)),
                  Spacer(
                    flex: 1,
                  ),
                  Text('Connectez vous en tant que...',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white)),
                  Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/core/auth'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30)),
                    child: Text('Client'),
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/core/auth'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40)),
                      child: Text('Livreur')),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/core/auth'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50)),
                      child: Text('Restaurant')),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
