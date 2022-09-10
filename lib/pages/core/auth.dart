// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/foods/rice1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTelField(
                  widget: Text('+228   '),
                  hint: 'Entrez votre numéro',
                ),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/core/tel_auth'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                    child: Text('->')),
                Text('Ou se connecter avec',
                    style: Theme.of(context).textTheme.bodyMedium),
                TextButton(
                  onPressed: () {
                    debugPrint('pressed i was, impressed i am');
                  },
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                  image: AssetImage('assets/icons/gl_icon.png'),
                                  fit: BoxFit.cover))),
                      Text("Google",
                          style: Theme.of(context).textTheme.headline4)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('pressed i was, impressed i am');
                  },
                  child: Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                  image: AssetImage('assets/icons/fb_icon.png'),
                                  fit: BoxFit.cover))),
                      Text("Facebook",
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
